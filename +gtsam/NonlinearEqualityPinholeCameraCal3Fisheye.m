%class NonlinearEqualityPinholeCameraCal3Fisheye, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEqualityPinholeCameraCal3Fisheye(size_t j, PinholeCamera<Cal3Fisheye> feasible)
%NonlinearEqualityPinholeCameraCal3Fisheye(size_t j, PinholeCamera<Cal3Fisheye> feasible, double error_gain)
%
%-------Methods-------
%
classdef NonlinearEqualityPinholeCameraCal3Fisheye < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEqualityPinholeCameraCal3Fisheye = 0
  end
  methods
    function obj = NonlinearEqualityPinholeCameraCal3Fisheye(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2352, varargin{2});
        end
        base_ptr = gtsam_wrapper(2351, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2353, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.PinholeCameraCal3Fisheye') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2354, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEqualityPinholeCameraCal3Fisheye constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEqualityPinholeCameraCal3Fisheye = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2355, obj.ptr_gtsamNonlinearEqualityPinholeCameraCal3Fisheye);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2356, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPinholeCameraCal3Fisheye.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearEqualityPinholeCameraCal3Fisheye
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2357, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPinholeCameraCal3Fisheye.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearEqualityPinholeCameraCal3Fisheye.string_deserialize(sobj);
    end
  end
end
