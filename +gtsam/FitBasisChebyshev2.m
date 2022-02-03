%class FitBasisChebyshev2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%FitBasisChebyshev2(map<double,double> sequence, Base model, size_t N)
%
%-------Methods-------
%parameters() : returns FitBasis<gtsam::Chebyshev2>::Parameters
%
%-------Static Methods-------
%LinearGraph(map<double,double> sequence, Base model, size_t N) : returns gtsam::GaussianFactorGraph::shared_ptr
%NonlinearGraph(map<double,double> sequence, Base model, size_t N) : returns gtsam::NonlinearFactorGraph
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns FitBasisChebyshev2
%
classdef FitBasisChebyshev2 < handle
  properties
    ptr_gtsamFitBasisChebyshev2 = 0
  end
  methods
    function obj = FitBasisChebyshev2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(377, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'std.mapdoubledouble') && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric')
        my_ptr = gtsam_wrapper(378, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.FitBasisChebyshev2 constructor');
      end
      obj.ptr_gtsamFitBasisChebyshev2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(379, obj.ptr_gtsamFitBasisChebyshev2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = parameters(this, varargin)
      % PARAMETERS usage: parameters() : returns FitBasis<gtsam::Chebyshev2>.Parameters
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(380, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FitBasisChebyshev2.parameters');
    end

  end

  methods(Static = true)
    function varargout = LinearGraph(varargin)
      % LINEARGRAPH usage: LinearGraph(map<double,double> sequence, Base model, size_t N) : returns gtsam.GaussianFactorGraph.shared_ptr
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'std.mapdoubledouble') && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric')
        varargout{1} = gtsam_wrapper(381, varargin{:});
        return
      end

      error('Arguments do not match any overload of function FitBasisChebyshev2.LinearGraph');
    end

    function varargout = NonlinearGraph(varargin)
      % NONLINEARGRAPH usage: NonlinearGraph(map<double,double> sequence, Base model, size_t N) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'std.mapdoubledouble') && isa(varargin{2},'gtsam.noiseModel.Base') && isa(varargin{3},'numeric')
        varargout{1} = gtsam_wrapper(382, varargin{:});
        return
      end

      error('Arguments do not match any overload of function FitBasisChebyshev2.NonlinearGraph');
    end

  end
end
