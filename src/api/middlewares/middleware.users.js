import * as UserService from '../services/service.user';
import ApiResponse from '../../lib/http/lib.http.response';
import enums from '../../lib/enums';

export const getUser = (type = '') => async(req, res, next) => {
  const { body: { email } } = req;
  const [ user ] = await UserService.getUsers(email);
  if (user && type === 'create_user') {
    logger.info('decoded that the user account already exists', 'middlewares::middleware.user.js');
    return ApiResponse.error(res, enums.RESOURCE_EXISTS('user'), enums.HTTP_BAD_REQUEST);
  }
  if (!user && type === 'login') {
    logger.info('decoded that the user does not exist', 'middlewares::middleware.user.js');
    return ApiResponse.error(res, enums.RESOURCE_NOT_EXIST('account'), enums.HTTP_BAD_REQUEST);
  }
  return next();
};
