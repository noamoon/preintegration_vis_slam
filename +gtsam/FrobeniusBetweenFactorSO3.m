%class FrobeniusBetweenFactorSO3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%FrobeniusBetweenFactorSO3(size_t key1, size_t key2, SO3 R12)
%FrobeniusBetweenFactorSO3(size_t key1, size_t key2, SO3 R12, Base model)
%
%-------Methods-------
%evaluateError(SO3 R1, SO3 R2) : returns Vector
%
classdef FrobeniusBetweenFactorSO3 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamFrobeniusBetweenFactorSO3 = 0
  end
  methods
    function obj = FrobeniusBetweenFactorSO3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2968, varargin{2});
        end
        base_ptr = gtsam_wrapper(2967, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.SO3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2969, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.SO3') && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2970, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.FrobeniusBetweenFactorSO3 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamFrobeniusBetweenFactorSO3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2971, obj.ptr_gtsamFrobeniusBetweenFactorSO3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(SO3 R1, SO3 R2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SO3') && isa(varargin{2},'gtsam.SO3')
        varargout{1} = gtsam_wrapper(2972, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FrobeniusBetweenFactorSO3.evaluateError');
    end

  end

  methods(Static = true)
  end
end
