%class NonlinearEqualitySO3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEqualitySO3(size_t j, SO3 feasible)
%NonlinearEqualitySO3(size_t j, SO3 feasible, double error_gain)
%
%-------Methods-------
%
classdef NonlinearEqualitySO3 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEqualitySO3 = 0
  end
  methods
    function obj = NonlinearEqualitySO3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2282, varargin{2});
        end
        base_ptr = gtsam_wrapper(2281, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2283, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.SO3') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2284, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEqualitySO3 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEqualitySO3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2285, obj.ptr_gtsamNonlinearEqualitySO3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2286, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualitySO3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearEqualitySO3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2287, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualitySO3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearEqualitySO3.string_deserialize(sobj);
    end
  end
end
