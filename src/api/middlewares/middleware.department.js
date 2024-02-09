import * as DepartmentService from '../services/service.department';
import ApiResponse from '../../lib/http/lib.http.response';
import enums from '../../lib/enums';

export const getDepartment = (type = '') => async(req, res, next) => {
  const { body } = req;
  const payload = body.department_id || body.name;
  const [ department ] = await DepartmentService.getDepartment(payload);
  if (!department && type === 'create_department') {
    logger.info('decoded that a department with this name already exists', 'middlewares::middleware.department.js');
    return ApiResponse.error(res, enums.RESOURCE_EXISTS('department'), enums.HTTP_BAD_REQUEST);
  }

  if (!department && body.user_type === 'department' && type === 'create_user') {
    logger.info('decoded that a department with this id Does not exist', 'middlewares::middleware.department.js');
    return ApiResponse.error(res, enums.RESOURCE_NOT_EXIST('department'), enums.HTTP_BAD_REQUEST);
  }

  return next();
};
