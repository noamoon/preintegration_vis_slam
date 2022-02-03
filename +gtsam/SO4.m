%class SO4, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SO4()
%SO4(Matrix R)
%
%-------Methods-------
%between(SO4 Q) : returns gtsam::SO4
%compose(SO4 Q) : returns gtsam::SO4
%equals(SO4 other, double tol) : returns bool
%inverse() : returns gtsam::SO4
%localCoordinates(SO4 Q) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%retract(Vector v) : returns gtsam::SO4
%vec() : returns Vector
%
%-------Static Methods-------
%Expmap(Vector v) : returns gtsam::SO4
%FromMatrix(Matrix R) : returns gtsam::SO4
%identity() : returns gtsam::SO4
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns SO4
%
classdef SO4 < handle
  properties
    ptr_gtsamSO4 = 0
  end
  methods
    function obj = SO4(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(519, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(520);
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(521, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SO4 constructor');
      end
      obj.ptr_gtsamSO4 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(522, obj.ptr_gtsamSO4);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = between(this, varargin)
      % BETWEEN usage: between(SO4 Q) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SO4')
        varargout{1} = gtsam_wrapper(523, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.between');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(SO4 Q) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SO4')
        varargout{1} = gtsam_wrapper(524, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SO4 other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SO4') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(525, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(526, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(SO4 Q) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SO4')
        varargout{1} = gtsam_wrapper(527, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.localCoordinates');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(528, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(529, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(530, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(531, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.retract');
    end

    function varargout = vec(this, varargin)
      % VEC usage: vec() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(532, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SO4.vec');
    end

  end

  methods(Static = true)
    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(533, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO4.Expmap');
    end

    function varargout = FromMatrix(varargin)
      % FROMMATRIX usage: FromMatrix(Matrix R) : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(534, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO4.FromMatrix');
    end

    function varargout = identity(varargin)
      % IDENTITY usage: identity() : returns gtsam.SO4
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(535, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SO4.identity');
    end

  end
end
