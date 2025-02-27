﻿// (c) проект "Snegopat.Module", Александр Орефков orefkov@gmail.com
// Описание интерфейсов 1С.

:class TextPosition
:props
	int_ptr vtable
	uint line
	uint col
:dlls
#if ver < 8.3
	core82.dll
#else
	core83.dll
#endif
	void ctor(const TextPosition&in)|??0TextPosition@core@@QAE@ABV01@@Z|??0TextPosition@core@@QEAA@AEBV01@@Z
	//TextPosition(const LabelData&in)|??0TextPosition@core@@QAE@ABVLabelData@1@@Z
	void ctor(int, int)|??0TextPosition@core@@QAE@HH@Z|??0TextPosition@core@@QEAA@HH@Z
	void ctor()|??0TextPosition@core@@QAE@XZ|??0TextPosition@core@@QEAA@XZ
	void dtor()|??1TextPosition@core@@UAE@XZ|??1TextPosition@core@@UEAA@XZ

	bool isValid()const|?isValid@TextPosition@core@@QBE_NXZ|?isValid@TextPosition@core@@QEBA_NXZ
	TextPosition opSub(const TextPosition&in)|??GTextPosition@core@@QAE?AV01@ABV01@@Z|??GTextPosition@core@@QEAA?AV01@AEBV01@@Z
	TextPosition& opAssign(const TextPosition&in)|??4TextPosition@core@@QAEAAV01@ABV01@@Z|??4TextPosition@core@@QEAAAEAV01@AEBV01@@Z
	bool opEquals(const TextPosition&in)const|??8TextPosition@core@@QBE_NABV01@@Z|??8TextPosition@core@@QEBA_NAEBV01@@Z

// Это не сервис в понимании V8, просто так объявляется ссылочный тип без подсчета ссылок
:service TextManager {00000000-0000-0000-0000-000000000000}
:virt
	0
	void virt_dtor()
	//13
	//save void onTextAreaModified(bool, const TextPosition&in, const TextPosition&in, const TextPosition&in, const TextPosition&in)
	
:dlls
#if ver < 8.3
	core82.dll
#else
	core83.dll
#endif
	//void ctor()|??0TextManager@core@@QAE@XZ
	//void dtor()|??1TextManager@core@@UAE@XZ
	void onTextAreaModified(bool, const TextPosition&in, const TextPosition&in, const TextPosition&in, const TextPosition&in)|?onTextAreaModified@TextManager@core@@UAEX_NABVTextPosition@2@111@Z|?onTextAreaModified@TextManager@core@@UEAAX_NAEBVTextPosition@2@111@Z
	void onSelectionRecalculateFinished(void)|?onSelectionRecalculateFinished@TextManager@core@@UAEXXZ|?onSelectionRecalculateFinished@TextManager@core@@UEAAXXZ
	void onSetSelectRangeStop(const TextPosition&,const TextPosition&)|?onSetSelectRangeStop@TextManager@core@@UAEXABVTextPosition@2@0@Z|?onSetSelectRangeStop@TextManager@core@@UEAAXAEBVTextPosition@2@0@Z
	void clearText()|?clearText@TextManager@core@@QAEXXZ|?clearText@TextManager@core@@QEAAXXZ
	bool empty()|?empty@TextManager@core@@QAE_NXZ|?empty@TextManager@core@@QEAA_NXZ
	int getLinesCount()|?getLinesCount@TextManager@core@@QAEHXZ|?getLinesCount@TextManager@core@@QEAAHXZ
	#if ver < 8.3.19
	//не нашел точку входа - предположил, что от этого метода избавились
	//далее в файлах - вызовы без этого объекта будут
	uint getCashObject(IUnknown@&)|?getCashObject@TextManager@core@@QAE?AV?$InterfacePtr@VITextManagerCash@core@@@2@XZ|?getCashObject@TextManager@core@@QEAA?AV?$InterfacePtr@VITextManagerCash@core@@@2@XZ
	#endif
	int getLineLength(int, bool)|?getLineLength@TextManager@core@@QAEHH_N@Z|?getLineLength@TextManager@core@@QEAAHH_N@Z
	void getSelectRange(TextPosition&, TextPosition&)|?getSelectRange@TextManager@core@@QAEXAAVTextPosition@2@0@Z|?getSelectRange@TextManager@core@@QEAAXAEAVTextPosition@2@0@Z
	void setSelectRange(const TextPosition&in, const TextPosition&in)|?setSelectRange@TextManager@core@@QAEXABVTextPosition@2@0@Z|?setSelectRange@TextManager@core@@QEAAXAEBVTextPosition@2@0@Z
	void setSelectRange(int, int, int, int)|?setSelectRange@TextManager@core@@QAEXHHHH@Z|?setSelectRange@TextManager@core@@QEAAXHHHH@Z
	void clearTextSelection()|?clearTextSelection@TextManager@core@@QAEXXZ|?clearTextSelection@TextManager@core@@QEAAXXZ
#if ver < 8.3.11
	bool save(v8string&)|?save@TextManager@core@@QAE_NAAV?$basic_string@_WV?$char_traits@_W@stlp_std@@V?$allocator@_W@2@@stlp_std@@@Z
	bool getLineFast(int, v8string&, IUnknown& cash)|?getLineFast@TextManager@core@@QAE_NHPAV?$basic_string@_WV?$char_traits@_W@stlp_std@@V?$allocator@_W@2@@stlp_std@@PAVITextManagerCash@2@@Z
	void setSelectText(int_ptr, bool)|?setSelectText@TextManager@core@@QAEXPB_W_N@Z
	void getTextArea(const TextPosition&in, const TextPosition&in, int_ptr&out result)|?getTextArea@TextManager@core@@QAEXABVTextPosition@2@0PAPA_W@Z
#else
	bool save(v8string&)|?save@TextManager@core@@QAE_NAAV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@@Z|?save@TextManager@core@@QEAA_NAEAV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@@Z
	#if ver > 8.3.19
	bool getLineFast(int, v8string&)|?getLineFast@TextManager@core@@QAE_NHPAV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@@Z|?getLineFast@TextManager@core@@QEAA_NHPEAV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@@Z
	#else
	bool getLineFast(int, v8string&, IUnknown& cash)|?getLineFast@TextManager@core@@QAE_NHPAV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@PAVITextManagerCash@2@@Z|?getLineFast@TextManager@core@@QEAA_NHPEAV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@PEAVITextManagerCash@2@@Z
	#endif
	void setSelectText(int_ptr, bool)|?setSelectText@TextManager@core@@QAEXPB_S_N@Z|?setSelectText@TextManager@core@@QEAAXPEB_S_N@Z
	#if ver > 8.3.19
	//на x64 падает
	void getTextArea(const TextPosition&in, const TextPosition&in, int_ptr&out result)|?getTextAreaStartStop@TextManager@core@@IAEXABVTextPosition@2@0AAUTextPositionPlacementInText@12@1@Z|?getTextAreaStartStop@TextManager@core@@IEAAXAEBVTextPosition@2@0AEAUTextPositionPlacementInText@12@1@Z
	#else
	void getTextArea(const TextPosition&in, const TextPosition&in, int_ptr&out result)|?getTextArea@TextManager@core@@QAEXABVTextPosition@2@0PAPA_S@Z|?getTextArea@TextManager@core@@QEAAXAEBVTextPosition@2@0PEAPEA_S@Z
	#endif
#endif

:struct LocalWString 4
:dlls
#if ver < 8.3
	core82.dll
#else
	core83.dll
#endif
	void ctor()|??0LocalWString@core@@QAE@XZ|??0LocalWString@core@@QEAA@XZ
#if ver < 8.3.11
	v8string getString(const v8string&in)const|?getString@LocalWString@core@@QBE?AV?$basic_string@_WV?$char_traits@_W@stlp_std@@V?$allocator@_W@2@@stlp_std@@ABV34@@Z
#else
	v8string getString(const v8string&in)const|?getString@LocalWString@core@@QBE?AV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@ABV34@@Z|?getString@LocalWString@core@@QEBA?AV?$basic_string@_SU?$fix_char_traits@_S@stdx@@V?$allocator@_S@std@@@stdx@@AEBV34@@Z
#endif
