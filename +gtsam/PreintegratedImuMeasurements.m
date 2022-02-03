%class PreintegratedImuMeasurements, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PreintegratedImuMeasurements(PreintegrationParams params)
%PreintegratedImuMeasurements(PreintegrationParams params, ConstantBias bias)
%
%-------Methods-------
%biasHat() : returns gtsam::imuBias::ConstantBias
%biasHatVector() : returns Vector
%deltaPij() : returns Vector
%deltaRij() : returns gtsam::Rot3
%deltaTij() : returns double
%deltaVij() : returns Vector
%equals(PreintegratedImuMeasurements expected, double tol) : returns bool
%integrateMeasurement(Vector measuredAcc, Vector measuredOmega, double deltaT) : returns void
%predict(NavState state_i, ConstantBias bias) : returns gtsam::NavState
%preintMeasCov() : returns Matrix
%preintegrated() : returns Vector
%print(string s) : returns void
%resetIntegration() : returns void
%resetIntegrationAndSetBias(ConstantBias biasHat) : returns void
%
classdef PreintegratedImuMeasurements < handle
  properties
    ptr_gtsamPreintegratedImuMeasurements = 0
  end
  methods
    function obj = PreintegratedImuMeasurements(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3321, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'gtsam.PreintegrationParams')
        my_ptr = gtsam_wrapper(3322, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.PreintegrationParams') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        my_ptr = gtsam_wrapper(3323, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.PreintegratedImuMeasurements constructor');
      end
      obj.ptr_gtsamPreintegratedImuMeasurements = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3324, obj.ptr_gtsamPreintegratedImuMeasurements);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = biasHat(this, varargin)
      % BIASHAT usage: biasHat() : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3325, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.biasHat');
    end

    function varargout = biasHatVector(this, varargin)
      % BIASHATVECTOR usage: biasHatVector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3326, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.biasHatVector');
    end

    function varargout = deltaPij(this, varargin)
      % DELTAPIJ usage: deltaPij() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3327, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.deltaPij');
    end

    function varargout = deltaRij(this, varargin)
      % DELTARIJ usage: deltaRij() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3328, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.deltaRij');
    end

    function varargout = deltaTij(this, varargin)
      % DELTATIJ usage: deltaTij() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3329, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.deltaTij');
    end

    function varargout = deltaVij(this, varargin)
      % DELTAVIJ usage: deltaVij() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3330, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.deltaVij');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PreintegratedImuMeasurements expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PreintegratedImuMeasurements') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3331, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.equals');
    end

    function varargout = integrateMeasurement(this, varargin)
      % INTEGRATEMEASUREMENT usage: integrateMeasurement(Vector measuredAcc, Vector measuredOmega, double deltaT) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        gtsam_wrapper(3332, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.integrateMeasurement');
    end

    function varargout = predict(this, varargin)
      % PREDICT usage: predict(NavState state_i, ConstantBias bias) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NavState') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        varargout{1} = gtsam_wrapper(3333, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.predict');
    end

    function varargout = preintMeasCov(this, varargin)
      % PREINTMEASCOV usage: preintMeasCov() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3334, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.preintMeasCov');
    end

    function varargout = preintegrated(this, varargin)
      % PREINTEGRATED usage: preintegrated() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3335, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.preintegrated');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3336, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3337, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.print');
    end

    function varargout = resetIntegration(this, varargin)
      % RESETINTEGRATION usage: resetIntegration() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3338, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.resetIntegration');
    end

    function varargout = resetIntegrationAndSetBias(this, varargin)
      % RESETINTEGRATIONANDSETBIAS usage: resetIntegrationAndSetBias(ConstantBias biasHat) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.imuBias.ConstantBias')
        gtsam_wrapper(3339, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.resetIntegrationAndSetBias');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3340, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PreintegratedImuMeasurements
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3341, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PreintegratedImuMeasurements.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PreintegratedImuMeasurements.string_deserialize(sobj);
    end
  end
end
