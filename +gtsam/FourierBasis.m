%class FourierBasis, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Static Methods-------
%CalculateWeights(size_t N, double x) : returns Vector
%DerivativeWeights(size_t N, double x) : returns Vector
%DifferentiationMatrix(size_t N) : returns Matrix
%WeightMatrix(size_t N, Vector x) : returns Matrix
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns FourierBasis
%
classdef FourierBasis < handle
  properties
    ptr_gtsamFourierBasis = 0
  end
  methods
    function obj = FourierBasis(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(204, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.FourierBasis constructor');
      end
      obj.ptr_gtsamFourierBasis = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(205, obj.ptr_gtsamFourierBasis);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
    function varargout = CalculateWeights(varargin)
      % CALCULATEWEIGHTS usage: CalculateWeights(size_t N, double x) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(206, varargin{:});
        return
      end

      error('Arguments do not match any overload of function FourierBasis.CalculateWeights');
    end

    function varargout = DerivativeWeights(varargin)
      % DERIVATIVEWEIGHTS usage: DerivativeWeights(size_t N, double x) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(207, varargin{:});
        return
      end

      error('Arguments do not match any overload of function FourierBasis.DerivativeWeights');
    end

    function varargout = DifferentiationMatrix(varargin)
      % DIFFERENTIATIONMATRIX usage: DifferentiationMatrix(size_t N) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(208, varargin{:});
        return
      end

      error('Arguments do not match any overload of function FourierBasis.DifferentiationMatrix');
    end

    function varargout = WeightMatrix(varargin)
      % WEIGHTMATRIX usage: WeightMatrix(size_t N, Vector x) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(209, varargin{:});
        return
      end

      error('Arguments do not match any overload of function FourierBasis.WeightMatrix');
    end

  end
end
