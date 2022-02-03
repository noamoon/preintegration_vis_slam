%class NonlinearEqualityPose2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEqualityPose2(size_t j, Pose2 feasible)
%NonlinearEqualityPose2(size_t j, Pose2 feasible, double error_gain)
%
%-------Methods-------
%
classdef NonlinearEqualityPose2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEqualityPose2 = 0
  end
  methods
    function obj = NonlinearEqualityPose2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2310, varargin{2});
        end
        base_ptr = gtsam_wrapper(2309, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2311, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Pose2') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2312, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEqualityPose2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEqualityPose2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2313, obj.ptr_gtsamNonlinearEqualityPose2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2314, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPose2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearEqualityPose2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2315, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPose2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearEqualityPose2.string_deserialize(sobj);
    end
  end
end
