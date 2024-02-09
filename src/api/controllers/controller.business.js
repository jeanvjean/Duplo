import * as BusinessService from '../services/service.business';
import ApiResponse from '../../lib/http/lib.http.response';
import enums from '../../lib/enums';

export const getCreditScore = async(req, res) => {
  const { params: { id } } = req;
  const [ score ] = await BusinessService.getCreditScore(id);
  logger.info('fetching business credit score from the database', 'controllers::controller.business.js');
  return ApiResponse.success(res, enums.RESOURCE_FETCHED('credit score'), enums.HTTP_OK, score);
};

export const getOrderDetails = async(req, res) => {
  const { params: { business_id } } = req;
  const orders = await BusinessService.getOrderDetails(business_id);
  logger.info('fetching business orders from the database', 'controllers::controller.business.js');
  return ApiResponse.success(res, enums.RESOURCE_FETCHED('order details'), enums.HTTP_OK, orders);
};
