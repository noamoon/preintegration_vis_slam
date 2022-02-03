%class FrobeniusBetweenFactorSO4, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%FrobeniusBetweenFactorSO4(size_t key1, size_t key2, SO4 R12)
%FrobeniusBetweenFactorSO4(size_t key1, size_t key2, SO4 R12, Base model)
%
%-------Methods-------
%evaluateError(SO4 R1, SO4 R2) : returns Vector
%
classdef FrobeniusBetweenFactorSO4 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamFrobeniusBetweenFactorSO4 = 0
  end
  methods
    function obj = FrobeniusBetweenFactorSO4(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2974, varargin{2});
        end
        base_ptr = gtsam_wrapper(2973, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.SO4')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2975, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.SO4') && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2976, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.FrobeniusBetweenFactorSO4 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamFrobeniusBetweenFactorSO4 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2977, obj.ptr_gtsamFrobeniusBetweenFactorSO4);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(SO4 R1, SO4 R2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SO4') && isa(varargin{2},'gtsam.SO4')
        varargout{1} = gtsam_wrapper(2978, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FrobeniusBetweenFactorSO4.evaluateError');
    end

  end

  methods(Static = true)
  end
end
