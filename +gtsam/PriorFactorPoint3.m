%class PriorFactorPoint3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PriorFactorPoint3(size_t key, Point3 prior, Base noiseModel)
%
%-------Methods-------
%prior() : returns Point3
%
classdef PriorFactorPoint3 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamPriorFactorPoint3 = 0
  end
  methods
    function obj = PriorFactorPoint3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2114, varargin{2});
        end
        base_ptr = gtsam_wrapper(2113, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2115, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.PriorFactorPoint3 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPriorFactorPoint3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2116, obj.ptr_gtsamPriorFactorPoint3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = prior(this, varargin)
      % PRIOR usage: prior() : returns Point3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2117, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PriorFactorPoint3.prior');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2118, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PriorFactorPoint3.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PriorFactorPoint3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2119, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PriorFactorPoint3.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PriorFactorPoint3.string_deserialize(sobj);
    end
  end
end
