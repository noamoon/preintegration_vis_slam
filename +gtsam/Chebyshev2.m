%class Chebyshev2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Static Methods-------
%CalculateWeights(size_t N, double x, double a, double b) : returns Matrix
%DerivativeWeights(size_t N, double x, double a, double b) : returns Matrix
%DifferentiationMatrix(size_t N, double a, double b) : returns Matrix
%IntegrationWeights(size_t N, double a, double b) : returns Matrix
%Point(size_t N, int j) : returns double
%Point(size_t N, int j, double a, double b) : returns double
%Points(size_t N) : returns Vector
%Points(size_t N, double a, double b) : returns Vector
%WeightMatrix(size_t N, Vector X) : returns Matrix
%WeightMatrix(size_t N, Vector X, double a, double b) : returns Matrix
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Chebyshev2
%
classdef Chebyshev2 < handle
  properties
    ptr_gtsamChebyshev2 = 0
  end
  methods
    function obj = Chebyshev2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(218, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.Chebyshev2 constructor');
      end
      obj.ptr_gtsamChebyshev2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(219, obj.ptr_gtsamChebyshev2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
    function varargout = CalculateWeights(varargin)
      % CALCULATEWEIGHTS usage: CalculateWeights(size_t N, double x, double a, double b) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(220, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.CalculateWeights');
    end

    function varargout = DerivativeWeights(varargin)
      % DERIVATIVEWEIGHTS usage: DerivativeWeights(size_t N, double x, double a, double b) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double') && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(221, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.DerivativeWeights');
    end

    function varargout = DifferentiationMatrix(varargin)
      % DIFFERENTIATIONMATRIX usage: DifferentiationMatrix(size_t N, double a, double b) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(222, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.DifferentiationMatrix');
    end

    function varargout = IntegrationWeights(varargin)
      % INTEGRATIONWEIGHTS usage: IntegrationWeights(size_t N, double a, double b) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(223, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.IntegrationWeights');
    end

    function varargout = Point(varargin)
      % POINT usage: Point(size_t N, int j) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(224, varargin{:});
        return
      end

      % POINT usage: Point(size_t N, int j, double a, double b) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(225, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.Point');
    end

    function varargout = Points(varargin)
      % POINTS usage: Points(size_t N) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(226, varargin{:});
        return
      end

      % POINTS usage: Points(size_t N, double a, double b) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double')
        varargout{1} = gtsam_wrapper(227, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.Points');
    end

    function varargout = WeightMatrix(varargin)
      % WEIGHTMATRIX usage: WeightMatrix(size_t N, Vector X) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(228, varargin{:});
        return
      end

      % WEIGHTMATRIX usage: WeightMatrix(size_t N, Vector X, double a, double b) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(229, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2.WeightMatrix');
    end

  end
end
