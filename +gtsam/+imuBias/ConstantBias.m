%class ConstantBias, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ConstantBias()
%ConstantBias(Vector biasAcc, Vector biasGyro)
%
%-------Methods-------
%accelerometer() : returns Vector
%correctAccelerometer(Vector measurement) : returns Vector
%correctGyroscope(Vector measurement) : returns Vector
%equals(ConstantBias expected, double tol) : returns bool
%gyroscope() : returns Vector
%print(string s) : returns void
%vector() : returns Vector
%
%-------Static Methods-------
%identity() : returns gtsam::imuBias::ConstantBias
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns ConstantBias
%
classdef ConstantBias < handle
  properties
    ptr_gtsamimuBiasConstantBias = 0
  end
  methods
    function obj = ConstantBias(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3258, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3259);
      elseif nargin == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        my_ptr = gtsam_wrapper(3260, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.imuBias.ConstantBias constructor');
      end
      obj.ptr_gtsamimuBiasConstantBias = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3261, obj.ptr_gtsamimuBiasConstantBias);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = accelerometer(this, varargin)
      % ACCELEROMETER usage: accelerometer() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3262, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.accelerometer');
    end

    function varargout = correctAccelerometer(this, varargin)
      % CORRECTACCELEROMETER usage: correctAccelerometer(Vector measurement) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(3263, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.correctAccelerometer');
    end

    function varargout = correctGyroscope(this, varargin)
      % CORRECTGYROSCOPE usage: correctGyroscope(Vector measurement) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(3264, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.correctGyroscope');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(ConstantBias expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.imuBias.ConstantBias') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3265, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.equals');
    end

    function varargout = gyroscope(this, varargin)
      % GYROSCOPE usage: gyroscope() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3266, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.gyroscope');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3267, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3268, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.print');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3269, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = vector(this, varargin)
      % VECTOR usage: vector() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3270, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.vector');
    end

  end

  methods(Static = true)
    function varargout = identity(varargin)
      % IDENTITY usage: identity() : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3271, varargin{:});
        return
      end

      error('Arguments do not match any overload of function ConstantBias.identity');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsamimuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(3272, varargin{:});
      else
        error('Arguments do not match any overload of function gtsamimuBias.ConstantBias.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsamimuBias.ConstantBias.string_deserialize(sobj);
    end
  end
end
