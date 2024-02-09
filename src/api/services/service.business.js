import queries from '../../lib/queries/lib.query.business';
import DB from '../../services/service.db';

export const getCreditScore = payload => DB.transact(queries.getCreditScore, [ payload ]);

export const getOrderDetails = payload => DB.transact(queries.orderDetails, [ payload ]);
