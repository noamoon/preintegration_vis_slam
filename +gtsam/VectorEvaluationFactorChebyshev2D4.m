%class VectorEvaluationFactorChebyshev2D4, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%VectorEvaluationFactorChebyshev2D4()
%VectorEvaluationFactorChebyshev2D4(Key key, Vector z, Base model, size_t N, double x)
%VectorEvaluationFactorChebyshev2D4(Key key, Vector z, Base model, size_t N, double x, double a, double b)
%
classdef VectorEvaluationFactorChebyshev2D4 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamVectorEvaluationFactorChebyshev2D4 = 0
  end
  methods
    function obj = VectorEvaluationFactorChebyshev2D4(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(390, varargin{2});
        end
        base_ptr = gtsam_wrapper(389, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(391);
      elseif nargin == 5 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base') && isa(varargin{4},'numeric') && isa(varargin{5},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(392, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 7 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.noiseModel.Base') && isa(varargin{4},'numeric') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(393, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      else
        error('Arguments do not match any overload of gtsam.VectorEvaluationFactorChebyshev2D4 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamVectorEvaluationFactorChebyshev2D4 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(394, obj.ptr_gtsamVectorEvaluationFactorChebyshev2D4);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
