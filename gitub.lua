--Game guardian detection


if
gg.isVisible(true) then
gg.setVisible(false)
end
gg.clearResults()
goto mulai

::mulai::
menumulai = gg.choice({'nomorsatu','2 gigo','uang','bukan main'},
TES1,'keluar')

  if menumulai == 1 then goto A end
  if menumulai == 2 then goto B end
  if menumulai == 3 then goto C end
  if menumulai == 4 then goto d end
  if menumulai == TEST1 then goto bye end
  goto selesai

::A::

  gg.clearResults()
  gg.searchNumber('999.999.999D;0,00472378684', gg.TYPE_FLOAT, false,
  gg.SIGN_AQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('124,567,897', gg.TYPE_DWORD, false, gg.SIGN_AQUAL, 0, -1)
  gg.toast('uang tidak terbatas')
  goto selesai

::B::

  gg.clearResults()
  gg.searchNumber('0,0;0,00000000', gg.TYPE_FLOAT, false,
  gg.SIGN_AQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll('99999999999', gg.TYPE_FLOAT)
  gg.toast('uang tidak terbatas')
  goto selesai

::C::
  gg.alert('jmeng hadeh')
  gg.clearResults()
  gg.searchNumber('999,999,999;-9,999,999,999',
  gg.TYPE_DWORD, false, gg.SIGN_AQUAL, 0, -1)
  gg.searchNumber('999,999,999', gg.TYPE_DWORD, false,
  gg.SIGN_AQUAL, 0, -1)
    a = gg.getResults(3) --load items))
    a[1].value = '126,777,999'
    a[1].freeze = true
    a[1].freezeType = gg.FREEZE_NORMAL
    a[2].value = '126,777,555'
    a[2].freeze = true
    a[2].freezeType = gg.FREEZE_NORMAL
    a[3].value = '126,777,888'
    a[3].freeze = true
    a[3].freezeType = gg.FREEZE_NORMAL
print('addListItems: ', gg.addListItems(a))
gg.toast('babi on')
goto selesai

::d::
gg.alert('tunggu saja')
gg.clearResults()
gg.searchNumber('243,356,455;-4,453,334,555',
gg.TYPE_DWORD,false, 
gg.SIGN_AQUAL, 0, -1)
gg.searchNumber('435,344,678'
gg.TYPE_DWORD, false,
gg.SIGN_AQUAL, 0, -1)

   a = gg.getResults(3) --load items))
   a[1].value = '126,777,999'
   a[1].freeze = true
   a[1].freezeType = gg.FREEZE_NORMAL
   a[2].value = '126,888,999'
   a[2].freeze = true
   a[3].freeze = 'freezeType' = gg.FREEZE_NORMAL
   a[3].value = '126,777,999'
   a[3].freeze = true
   a[3].freezeType = gg.FREEZE_NORMAL

print('addListItems: ', gg.addListItems(a))
gg.toast('on')
   goto selesai 


::bye:: 
gg.toast('keluar')
goto selesai

::selesai::
os.exit()