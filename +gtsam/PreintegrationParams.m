%class PreintegrationParams, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PreintegrationParams(Vector n_gravity)
%
%-------Methods-------
%equals(PreintegrationParams expected, double tol) : returns bool
%getAccelerometerCovariance() : returns Matrix
%getIntegrationCovariance() : returns Matrix
%getUse2ndOrderCoriolis() : returns bool
%print(string s) : returns void
%setAccelerometerCovariance(Matrix cov) : returns void
%setIntegrationCovariance(Matrix cov) : returns void
%setUse2ndOrderCoriolis(bool flag) : returns void
%
%-------Static Methods-------
%MakeSharedD(double g) : returns gtsam::PreintegrationParams
%MakeSharedD() : returns gtsam::PreintegrationParams
%MakeSharedU(double g) : returns gtsam::PreintegrationParams
%MakeSharedU() : returns gtsam::PreintegrationParams
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns PreintegrationParams
%
classdef PreintegrationParams < gtsam.PreintegratedRotationParams
  properties
    ptr_gtsamPreintegrationParams = 0
  end
  methods
    function obj = PreintegrationParams(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3303, varargin{2});
        end
        base_ptr = gtsam_wrapper(3302, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(3304, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.PreintegrationParams constructor');
      end
      obj = obj@gtsam.PreintegratedRotationParams(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPreintegrationParams = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3305, obj.ptr_gtsamPreintegrationParams);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PreintegrationParams expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PreintegrationParams') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3306, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.equals');
    end

    function varargout = getAccelerometerCovariance(this, varargin)
      % GETACCELEROMETERCOVARIANCE usage: getAccelerometerCovariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3307, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.getAccelerometerCovariance');
    end

    function varargout = getIntegrationCovariance(this, varargin)
      % GETINTEGRATIONCOVARIANCE usage: getIntegrationCovariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3308, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.getIntegrationCovariance');
    end

    function varargout = getUse2ndOrderCoriolis(this, varargin)
      % GETUSE2NDORDERCORIOLIS usage: getUse2ndOrderCoriolis() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3309, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.getUse2ndOrderCoriolis');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3310, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3311, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.print');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3312, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PreintegrationParams.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = setAccelerometerCovariance(this, varargin)
      % SETACCELEROMETERCOVARIANCE usage: setAccelerometerCovariance(Matrix cov) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3313, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.setAccelerometerCovariance');
    end

    function varargout = setIntegrationCovariance(this, varargin)
      % SETINTEGRATIONCOVARIANCE usage: setIntegrationCovariance(Matrix cov) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        gtsam_wrapper(3314, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.setIntegrationCovariance');
    end

    function varargout = setUse2ndOrderCoriolis(this, varargin)
      % SETUSE2NDORDERCORIOLIS usage: setUse2ndOrderCoriolis(bool flag) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'logical')
        gtsam_wrapper(3315, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegrationParams.setUse2ndOrderCoriolis');
    end

  end

  methods(Static = true)
    function varargout = MakeSharedD(varargin)
      % MAKESHAREDD usage: MakeSharedD(double g) : returns gtsam.PreintegrationParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3316, varargin{:});
        return
      end

      % MAKESHAREDD usage: MakeSharedD() : returns gtsam.PreintegrationParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3317, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PreintegrationParams.MakeSharedD');
    end

    function varargout = MakeSharedU(varargin)
      % MAKESHAREDU usage: MakeSharedU(double g) : returns gtsam.PreintegrationParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3318, varargin{:});
        return
      end

      % MAKESHAREDU usage: MakeSharedU() : returns gtsam.PreintegrationParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3319, varargin{:});
        return
      end

      error('Arguments do not match any overload of function PreintegrationParams.MakeSharedU');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PreintegrationParams
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3320, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PreintegrationParams.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PreintegrationParams.string_deserialize(sobj);
    end
  end
end
