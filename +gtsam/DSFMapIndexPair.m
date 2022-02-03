%class DSFMapIndexPair, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%DSFMapIndexPair()
%
%-------Methods-------
%find(IndexPair key) : returns gtsam::IndexPair
%merge(IndexPair x, IndexPair y) : returns void
%sets() : returns std::map<gtsam::IndexPair,gtsam::DSFMap<gtsam::IndexPair>::Set>
%
classdef DSFMapIndexPair < handle
  properties
    ptr_gtsamDSFMapIndexPair = 0
  end
  methods
    function obj = DSFMapIndexPair(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(113, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(114);
      else
        error('Arguments do not match any overload of gtsam.DSFMapIndexPair constructor');
      end
      obj.ptr_gtsamDSFMapIndexPair = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(115, obj.ptr_gtsamDSFMapIndexPair);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = find(this, varargin)
      % FIND usage: find(IndexPair key) : returns gtsam.IndexPair
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPair')
        varargout{1} = gtsam_wrapper(116, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DSFMapIndexPair.find');
    end

    function varargout = merge(this, varargin)
      % MERGE usage: merge(IndexPair x, IndexPair y) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.IndexPair') && isa(varargin{2},'gtsam.IndexPair')
        gtsam_wrapper(117, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DSFMapIndexPair.merge');
    end

    function varargout = sets(this, varargin)
      % SETS usage: sets() : returns std.mapgtsam::IndexPairSet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(118, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.DSFMapIndexPair.sets');
    end

  end

  methods(Static = true)
  end
end
