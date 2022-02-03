%class Chebyshev2Basis, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Static Methods-------
%CalculateWeights(size_t N, double x) : returns Matrix
%WeightMatrix(size_t N, Vector x) : returns Matrix
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Chebyshev2Basis
%
classdef Chebyshev2Basis < handle
  properties
    ptr_gtsamChebyshev2Basis = 0
  end
  methods
    function obj = Chebyshev2Basis(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(214, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.Chebyshev2Basis constructor');
      end
      obj.ptr_gtsamChebyshev2Basis = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(215, obj.ptr_gtsamChebyshev2Basis);
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
        varargout{1} = gtsam_wrapper(216, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2Basis.CalculateWeights');
    end

    function varargout = WeightMatrix(varargin)
      % WEIGHTMATRIX usage: WeightMatrix(size_t N, Vector x) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(217, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Chebyshev2Basis.WeightMatrix');
    end

  end
end
