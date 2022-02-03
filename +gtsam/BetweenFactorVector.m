%class BetweenFactorVector, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%BetweenFactorVector(size_t key1, size_t key2, Vector relativePose, Base noiseModel)
%
%-------Methods-------
%measured() : returns Vector
%
classdef BetweenFactorVector < gtsam.NoiseModelFactor
  properties
    ptr_gtsamBetweenFactorVector = 0
  end
  methods
    function obj = BetweenFactorVector(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2746, varargin{2});
        end
        base_ptr = gtsam_wrapper(2745, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2747, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.BetweenFactorVector constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamBetweenFactorVector = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2748, obj.ptr_gtsamBetweenFactorVector);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2749, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.BetweenFactorVector.measured');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2750, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BetweenFactorVector.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.BetweenFactorVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(2751, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.BetweenFactorVector.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.BetweenFactorVector.string_deserialize(sobj);
    end
  end
end
