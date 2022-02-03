%class Chebyshev1Basis, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Static Methods-------
%CalculateWeights(size_t N, double x) : returns Matrix
%WeightMatrix(size_t N, Vector X) : returns Matrix
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Chebyshev1Basis
%
classdef Chebyshev1Basis < handle
  properties
    ptr_gtsamChebyshev1Basis = 0
  end
  methods
    function obj = Chebyshev1Basis(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(210, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.Chebyshev1Basis constructor');
      end
      obj.ptr_gtsamChebyshev1Basis = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(211, obj.ptr_gtsamChebyshev1Basis);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
    function varargout = CalculateWeights(varargin)
      % CALCULATEWEIGHTS usage: CalculateWeights(size_t N, double x) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(212, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev1Basis.CalculateWeights');
    end

    function varargout = WeightMatrix(varargin)
      % WEIGHTMATRIX usage: WeightMatrix(size_t N, Vector X) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(213, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev1Basis.WeightMatrix');
    end

  end
end
