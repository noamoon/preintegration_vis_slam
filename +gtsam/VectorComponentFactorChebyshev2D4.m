%class VectorComponentFactorChebyshev2D4, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%VectorComponentFactorChebyshev2D4()
%VectorComponentFactorChebyshev2D4(Key key, double z, Base model, size_t N, size_t i, double x)
%VectorComponentFactorChebyshev2D4(Key key, double z, Base model, size_t N, size_t i, double x, double a, double b)
%
classdef VectorComponentFactorChebyshev2D4 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamVectorComponentFactorChebyshev2D4 = 0
  end
  methods
    function obj = VectorComponentFactorChebyshev2D4(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(408, varargin{2});
        end
        base_ptr = gtsam_wrapper(407, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(409);
      elseif nargin == 6 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.noiseModel.Base') && isa(varargin{4},'numeric') && isa(varargin{5},'numeric') && isa(varargin{6},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(410, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 8 && isa(varargin{1},'gtsam.Key') && isa(varargin{2},'double') && isa(varargin{3},'gtsam.noiseModel.Base') && isa(varargin{4},'numeric') && isa(varargin{5},'numeric') && isa(varargin{6},'double') && isa(varargin{7},'double') && isa(varargin{8},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(411, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      else
        error('Arguments do not match any overload of gtsam.VectorComponentFactorChebyshev2D4 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamVectorComponentFactorChebyshev2D4 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(412, obj.ptr_gtsamVectorComponentFactorChebyshev2D4);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
