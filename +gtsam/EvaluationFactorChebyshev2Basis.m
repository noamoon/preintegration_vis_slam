%class EvaluationFactorChebyshev2Basis, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%EvaluationFactorChebyshev2Basis()
%EvaluationFactorChebyshev2Basis(Key key, double z, Base model, size_t N, double x)
%EvaluationFactorChebyshev2Basis(Key key, double z, Base model, size_t N, double x, double a, double b)
%
classdef EvaluationFactorChebyshev2Basis < gtsam.NoiseModelFactor
  properties
    ptr_gtsamEvaluationFactorChebyshev2Basis = 0
  end
  methods
    function obj = EvaluationFactorChebyshev2Basis(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(348, varargin{2});
        end
        base_ptr = gtsam_wrapper(347, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(349);
      elseif nargin == 5 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.noiseModel.Base') && isa(varargin{4},'numeric') && isa(varargin{5},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(350, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 7 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.noiseModel.Base') && isa(varargin{4},'numeric') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(351, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      else
        error('Arguments do not match any overload of gtsam.EvaluationFactorChebyshev2Basis constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamEvaluationFactorChebyshev2Basis = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(352, obj.ptr_gtsamEvaluationFactorChebyshev2Basis);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
