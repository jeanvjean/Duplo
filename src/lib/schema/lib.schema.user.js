import Joi from 'joi';
import * as ValidationHelpers from '../utils/lib.validation.helper';

const {
  stringCheck, emailCheck, editStringCheck,
} = ValidationHelpers;

export const createUserSchema = Joi.object({
  first_name: stringCheck('first_name'),
  last_name: stringCheck('last_name'),
  email: emailCheck('email'),
  user_type: editStringCheck('user_type').valid('department', 'business'),
  business_id: stringCheck('business_id'),
  department_id: editStringCheck('department_id').when('user_type', {
    is: 'department',
    then: stringCheck('department_id'),
  }),
  password: stringCheck('password'),
});
