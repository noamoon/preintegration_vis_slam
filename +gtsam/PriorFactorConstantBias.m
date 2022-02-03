%class PriorFactorConstantBias, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PriorFactorConstantBias(size_t key, ConstantBias prior, Base noiseModel)
%
%-------Methods-------
%prior() : returns gtsam::imuBias::ConstantBias
%
classdef PriorFactorConstantBias < gtsam.NoiseModelFactor
  properties
    ptr_gtsamPriorFactorConstantBias = 0
  end
  methods
    function obj = PriorFactorConstantBias(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2247, varargin{2});
        end
        base_ptr = gtsam_wrapper(2246, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.imuBias.ConstantBias') && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2248, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.PriorFactorConstantBias constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPriorFactorConstantBias = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2249, obj.ptr_gtsamPriorFactorConstantBias);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = prior(this, varargin)
      % PRIOR usage: prior() : returns gtsam.imuBias.ConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2250, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PriorFactorConstantBias.prior');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2251, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PriorFactorConstantBias.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.PriorFactorConstantBias
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2252, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.PriorFactorConstantBias.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.PriorFactorConstantBias.string_deserialize(sobj);
    end
  end
end
