%class RangeFactorSimpleCameraPoint, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%RangeFactorSimpleCameraPoint(size_t key1, size_t key2, double measured, Base noiseModel)
%
%-------Methods-------
%
classdef RangeFactorSimpleCameraPoint < gtsam.NoiseModelFactor
  properties
    ptr_gtsamRangeFactorSimpleCameraPoint = 0
  end
  methods
    function obj = RangeFactorSimpleCameraPoint(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2672, varargin{2});
        end
        base_ptr = gtsam_wrapper(2671, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2673, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.RangeFactorSimpleCameraPoint constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamRangeFactorSimpleCameraPoint = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2674, obj.ptr_gtsamRangeFactorSimpleCameraPoint);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2675, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.RangeFactorSimpleCameraPoint.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.RangeFactorSimpleCameraPoint
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2676, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.RangeFactorSimpleCameraPoint.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.RangeFactorSimpleCameraPoint.string_deserialize(sobj);
    end
  end
end
