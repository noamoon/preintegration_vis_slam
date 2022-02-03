%class HessianFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%HessianFactor()
%HessianFactor(GaussianFactor factor)
%HessianFactor(size_t j, Matrix G, Vector g, double f)
%HessianFactor(size_t j, Vector mu, Matrix Sigma)
%HessianFactor(size_t j1, size_t j2, Matrix G11, Matrix G12, Vector g1, Matrix G22, Vector g2, double f)
%HessianFactor(size_t j1, size_t j2, size_t j3, Matrix G11, Matrix G12, Matrix G13, Vector g1, Matrix G22, Matrix G23, Vector g2, Matrix G33, Vector g3, double f)
%HessianFactor(GaussianFactorGraph factors)
%
%-------Methods-------
%constantTerm() : returns double
%equals(GaussianFactor lf, double tol) : returns bool
%error(VectorValues c) : returns double
%information() : returns Matrix
%linearTerm() : returns Vector
%print(string s, KeyFormatter keyFormatter) : returns void
%printKeys(string s) : returns void
%rows() : returns size_t
%size() : returns size_t
%
classdef HessianFactor < gtsam.GaussianFactor
  properties
    ptr_gtsamHessianFactor = 0
  end
  methods
    function obj = HessianFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1319, varargin{2});
        end
        base_ptr = gtsam_wrapper(1318, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1320);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1321, varargin{1});
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1322, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1323, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 8 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'double') && isa(varargin{4},'double') && isa(varargin{5},'double') && size(varargin{5},2)==1 && isa(varargin{6},'double') && isa(varargin{7},'double') && size(varargin{7},2)==1 && isa(varargin{8},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1324, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      elseif nargin == 13 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'double') && isa(varargin{6},'double') && isa(varargin{7},'double') && size(varargin{7},2)==1 && isa(varargin{8},'double') && isa(varargin{9},'double') && isa(varargin{10},'double') && size(varargin{10},2)==1 && isa(varargin{11},'double') && isa(varargin{12},'double') && size(varargin{12},2)==1 && isa(varargin{13},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1325, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8}, varargin{9}, varargin{10}, varargin{11}, varargin{12}, varargin{13});
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1326, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.HessianFactor constructor');
      end
      obj = obj@gtsam.GaussianFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamHessianFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1327, obj.ptr_gtsamHessianFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = constantTerm(this, varargin)
      % CONSTANTTERM usage: constantTerm() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1328, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.constantTerm');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianFactor lf, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1329, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1330, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.error');
    end

    function varargout = information(this, varargin)
      % INFORMATION usage: information() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1331, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.information');
    end

    function varargout = linearTerm(this, varargin)
      % LINEARTERM usage: linearTerm() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1332, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.linearTerm');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1333, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1334, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1335, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.print');
    end

    function varargout = printKeys(this, varargin)
      % PRINTKEYS usage: printKeys(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1336, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.printKeys');
    end

    function varargout = rows(this, varargin)
      % ROWS usage: rows() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1337, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.rows');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1338, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.HessianFactor.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1339, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.HessianFactor.size');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.HessianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1340, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.HessianFactor.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.HessianFactor.string_deserialize(sobj);
    end
  end
end
