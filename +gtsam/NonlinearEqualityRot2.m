%class NonlinearEqualityRot2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEqualityRot2(size_t j, Rot2 feasible)
%NonlinearEqualityRot2(size_t j, Rot2 feasible, double error_gain)
%
%-------Methods-------
%
classdef NonlinearEqualityRot2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEqualityRot2 = 0
  end
  methods
    function obj = NonlinearEqualityRot2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2275, varargin{2});
        end
        base_ptr = gtsam_wrapper(2274, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2276, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2277, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEqualityRot2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEqualityRot2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2278, obj.ptr_gtsamNonlinearEqualityRot2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2279, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityRot2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.NonlinearEqualityRot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2280, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.NonlinearEqualityRot2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.NonlinearEqualityRot2.string_deserialize(sobj);
    end
  end
end
