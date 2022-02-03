%class FrobeniusFactorSO4, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%FrobeniusFactorSO4(size_t key1, size_t key2)
%FrobeniusFactorSO4(size_t key1, size_t key2, Base model)
%
%-------Methods-------
%evaluateError(SO4 R1, SO4 R2) : returns Vector
%
classdef FrobeniusFactorSO4 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamFrobeniusFactorSO4 = 0
  end
  methods
    function obj = FrobeniusFactorSO4(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2962, varargin{2});
        end
        base_ptr = gtsam_wrapper(2961, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2963, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2964, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.FrobeniusFactorSO4 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamFrobeniusFactorSO4 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2965, obj.ptr_gtsamFrobeniusFactorSO4);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(SO4 R1, SO4 R2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SO4') && isa(varargin{2},'gtsam.SO4')
        varargout{1} = gtsam_wrapper(2966, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FrobeniusFactorSO4.evaluateError');
    end

  end

  methods(Static = true)
  end
end
