%class NonlinearEqualityPinholeCameraCal3Unified, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEqualityPinholeCameraCal3Unified(size_t j, PinholeCamera<Cal3Unified> feasible)
%NonlinearEqualityPinholeCameraCal3Unified(size_t j, PinholeCamera<Cal3Unified> feasible, double error_gain)
%
%-------Methods-------
%
classdef NonlinearEqualityPinholeCameraCal3Unified < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEqualityPinholeCameraCal3Unified = 0
  end
  methods
    function obj = NonlinearEqualityPinholeCameraCal3Unified(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2359, varargin{2});
        end
        base_ptr = gtsam_wrapper(2358, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2360, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Unified') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2361, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEqualityPinholeCameraCal3Unified constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEqualityPinholeCameraCal3Unified = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2362, obj.ptr_gtsamNonlinearEqualityPinholeCameraCal3Unified);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2363, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPinholeCameraCal3Unified.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearEqualityPinholeCameraCal3Unified
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2364, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPinholeCameraCal3Unified.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearEqualityPinholeCameraCal3Unified.string_deserialize(sobj);
    end
  end
end
