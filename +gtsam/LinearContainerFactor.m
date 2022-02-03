%class LinearContainerFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%LinearContainerFactor(GaussianFactor factor, Values linearizationPoint)
%LinearContainerFactor(GaussianFactor factor)
%
%-------Methods-------
%factor() : returns gtsam::GaussianFactor
%isJacobian() : returns bool
%toHessian() : returns gtsam::HessianFactor
%toJacobian() : returns gtsam::JacobianFactor
%
%-------Static Methods-------
%ConvertLinearGraph(GaussianFactorGraph linear_graph, Values linearizationPoint) : returns gtsam::NonlinearFactorGraph
%ConvertLinearGraph(GaussianFactorGraph linear_graph) : returns gtsam::NonlinearFactorGraph
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns LinearContainerFactor
%
classdef LinearContainerFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamLinearContainerFactor = 0
  end
  methods
    function obj = LinearContainerFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1842, varargin{2});
        end
        base_ptr = gtsam_wrapper(1841, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.GaussianFactor') && isa(varargin{2},'gtsam.Values')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1843, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1844, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.LinearContainerFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamLinearContainerFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1845, obj.ptr_gtsamLinearContainerFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = factor(this, varargin)
      % FACTOR usage: factor() : returns gtsam.GaussianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1846, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LinearContainerFactor.factor');
    end

    function varargout = isJacobian(this, varargin)
      % ISJACOBIAN usage: isJacobian() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1847, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LinearContainerFactor.isJacobian');
    end

    function varargout = toHessian(this, varargin)
      % TOHESSIAN usage: toHessian() : returns gtsam.HessianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1848, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LinearContainerFactor.toHessian');
    end

    function varargout = toJacobian(this, varargin)
      % TOJACOBIAN usage: toJacobian() : returns gtsam.JacobianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1849, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.LinearContainerFactor.toJacobian');
    end

  end

  methods(Static = true)
    function varargout = ConvertLinearGraph(varargin)
      % CONVERTLINEARGRAPH usage: ConvertLinearGraph(GaussianFactorGraph linear_graph, Values linearizationPoint) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1850, varargin{:});
        return
      end

      % CONVERTLINEARGRAPH usage: ConvertLinearGraph(GaussianFactorGraph linear_graph) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        varargout{1} = gtsam_wrapper(1851, varargin{:});
        return
      end

      error('Arguments do not match any overload of function LinearContainerFactor.ConvertLinearGraph');
    end

  end
end
