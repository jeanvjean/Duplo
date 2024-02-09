import * as UserService from '../services/service.user';
import * as UserPayload from '../../lib/payloads/lib.payload.user';
import ApiResponse from '../../lib/http/lib.http.response';
import enums from '../../lib/enums';

export const createUser = async(req, res) => {
  const { body } = req;
  const userPayload = UserPayload.createUserAccount(body);
  logger.info('setting up the payload to create user', 'controllers::controller.user.js');
  const [ user ] = await UserService.createUser(userPayload);
  logger.info(`created user successfully with the id ${user.id}`, 'controllers::controller.user.js');
  return ApiResponse.success(res, enums.RESOURCE_CREATED('user'), enums.HTTP_CREATED, user);
};
