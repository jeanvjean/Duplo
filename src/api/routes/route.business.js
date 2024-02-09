import { Router } from 'express';
import { catchErrors } from '../../lib/http/lib.http.errorhandler';
import * as Controller from '../controllers/controller.business';

const router = Router();

router.get(
  '/:id',
  catchErrors(Controller.getCreditScore),
);

router.get(
  '/orders/:business_id',
  catchErrors(Controller.getOrderDetails),
);

export default router;
