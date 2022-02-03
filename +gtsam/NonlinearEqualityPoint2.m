%class NonlinearEqualityPoint2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEqualityPoint2(size_t j, Point2 feasible)
%NonlinearEqualityPoint2(size_t j, Point2 feasible, double error_gain)
%
%-------Methods-------
%
classdef NonlinearEqualityPoint2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEqualityPoint2 = 0
  end
  methods
    function obj = NonlinearEqualityPoint2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2254, varargin{2});
        end
        base_ptr = gtsam_wrapper(2253, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(2255, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1 && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2256, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEqualityPoint2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEqualityPoint2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2257, obj.ptr_gtsamNonlinearEqualityPoint2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2258, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPoint2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearEqualityPoint2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2259, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityPoint2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearEqualityPoint2.string_deserialize(sobj);
    end
  end
end
