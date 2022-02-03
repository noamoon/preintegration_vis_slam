%class PriorFactorRot2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PriorFactorRot2(size_t key, Rot2 prior, Base noiseModel)
%
%-------Methods-------
%prior() : returns gtsam::Rot2
%
classdef PriorFactorRot2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamPriorFactorRot2 = 0
  end
  methods
    function obj = PriorFactorRot2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2121, varargin{2});
        end
        base_ptr = gtsam_wrapper(2120, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Rot2') && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2122, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.PriorFactorRot2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPriorFactorRot2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2123, obj.ptr_gtsamPriorFactorRot2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = prior(this, varargin)
      % PRIOR usage: prior() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2124, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PriorFactorRot2.prior');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2125, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PriorFactorRot2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PriorFactorRot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2126, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PriorFactorRot2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PriorFactorRot2.string_deserialize(sobj);
    end
  end
end
