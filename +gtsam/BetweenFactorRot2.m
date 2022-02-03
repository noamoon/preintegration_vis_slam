%class BetweenFactorRot2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BetweenFactorRot2(size_t key1, size_t key2, Rot2 relativePose, Base noiseModel)
%
%-------Methods-------
%measured() : returns gtsam::Rot2
%
classdef BetweenFactorRot2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamBetweenFactorRot2 = 0
  end
  methods
    function obj = BetweenFactorRot2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2767, varargin{2});
        end
        base_ptr = gtsam_wrapper(2766, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Rot2') && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2768, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.BetweenFactorRot2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamBetweenFactorRot2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2769, obj.ptr_gtsamBetweenFactorRot2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2770, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorRot2.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2771, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BetweenFactorRot2.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.BetweenFactorRot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2772, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BetweenFactorRot2.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.BetweenFactorRot2.string_deserialize(sobj);
    end
  end
end
