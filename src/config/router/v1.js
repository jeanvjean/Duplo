import { Router } from 'express';
import businessRoutes from '../../api/routes/route.business';

const api = Router();

api.use('/business', businessRoutes);

export default api;
