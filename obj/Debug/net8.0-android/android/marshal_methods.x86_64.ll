; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [366 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [732 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 261
	i64 88044352297782346, ; 1: CommunityToolkit.Diagnostics.dll => 0x138cbdf37304c4a => 173
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 188
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 170
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 198
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 57
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 248
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 150
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 290
	i64 250930237006106389, ; 9: Microsoft.VisualStudio.DesignTools.XamlTapContract.dll => 0x37b7bb898274f15 => 364
	i64 295915112840604065, ; 10: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 293
	i64 316157742385208084, ; 11: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 255
	i64 350667413455104241, ; 12: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 131
	i64 396868157601372792, ; 13: Microsoft.VisualStudio.DesignTools.TapContract => 0x581f57c947e5a78 => 363
	i64 422779754995088667, ; 14: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 55
	i64 435118502366263740, ; 15: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 292
	i64 545109961164950392, ; 16: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 334
	i64 560278790331054453, ; 17: System.Reflection.Primitives => 0x7c6829760de3975 => 94
	i64 590337075967009532, ; 18: Microsoft.Maui.Maps.dll => 0x8314c715ec1a2fc => 200
	i64 634308326490598313, ; 19: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 274
	i64 649145001856603771, ; 20: System.Security.SecureString => 0x90239f09b62167b => 128
	i64 687654259221141486, ; 21: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 313
	i64 750875890346172408, ; 22: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 144
	i64 798450721097591769, ; 23: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 249
	i64 799765834175365804, ; 24: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 25: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 337
	i64 872800313462103108, ; 26: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 260
	i64 895210737996778430, ; 27: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 275
	i64 940822596282819491, ; 28: System.Transactions => 0xd0e792aa81923a3 => 149
	i64 943650302560566006, ; 29: ExoPlayer.Dash.dll => 0xd1884f3544ffaf6 => 218
	i64 960778385402502048, ; 30: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 103
	i64 1010599046655515943, ; 31: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 94
	i64 1055774368762298424, ; 32: ar/Microsoft.Maui.Controls.resources => 0xea6dd31d50a0038 => 327
	i64 1120440138749646132, ; 33: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 305
	i64 1121665720830085036, ; 34: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 345
	i64 1268860745194512059, ; 35: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1269279639035949735, ; 36: Validation => 0x119d631b555fb2a7 => 213
	i64 1301626418029409250, ; 37: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 240
	i64 1369545283391376210, ; 39: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 283
	i64 1404195534211153682, ; 40: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 49
	i64 1425944114962822056, ; 41: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 114
	i64 1435054553028609000, ; 42: ExoPlayer.Ext.MediaSession => 0x13ea56834293c3e8 => 224
	i64 1476839205573959279, ; 43: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 69
	i64 1486715745332614827, ; 44: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 194
	i64 1491290866305144020, ; 45: Xamarin.Google.AutoValue.Annotations.dll => 0x14b2212446e714d4 => 306
	i64 1492954217099365037, ; 46: System.Net.HttpListener => 0x14b809f350210aad => 64
	i64 1513467482682125403, ; 47: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 169
	i64 1537168428375924959, ; 48: System.Threading.Thread.dll => 0x15551e8a954ae0df => 144
	i64 1556147632182429976, ; 49: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 343
	i64 1576750169145655260, ; 50: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 304
	i64 1624659445732251991, ; 51: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 239
	i64 1628611045998245443, ; 52: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 278
	i64 1636321030536304333, ; 53: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 268
	i64 1643226597988041431, ; 54: pl/Microsoft.Maui.Controls.resources => 0x16cde9e27a8d02d7 => 347
	i64 1651782184287836205, ; 55: System.Globalization.Calendars => 0x16ec4f2524cb982d => 39
	i64 1659332977923810219, ; 56: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 88
	i64 1682513316613008342, ; 57: System.Net.dll => 0x17597cf276952bd6 => 80
	i64 1731380447121279447, ; 58: Newtonsoft.Json => 0x18071957e9b889d7 => 202
	i64 1735388228521408345, ; 59: System.Net.Mail.dll => 0x181556663c69b759 => 65
	i64 1743969030606105336, ; 60: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1767386781656293639, ; 61: System.Private.Uri.dll => 0x188704e9f5582107 => 85
	i64 1795316252682057001, ; 62: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 238
	i64 1825687700144851180, ; 63: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 105
	i64 1836611346387731153, ; 64: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 290
	i64 1854145951182283680, ; 65: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 101
	i64 1875417405349196092, ; 66: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 67: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 235
	i64 1897575647115118287, ; 68: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 292
	i64 1920760634179481754, ; 69: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 196
	i64 1930726298510463061, ; 70: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 178
	i64 1959996714666907089, ; 71: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 355
	i64 1972385128188460614, ; 72: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 118
	i64 1981742497975770890, ; 73: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 276
	i64 1983698669889758782, ; 74: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 329
	i64 1996473713535492147, ; 75: CommunityToolkit.Maui.MediaElement.dll => 0x1bb4e643c2b02033 => 177
	i64 2019660174692588140, ; 76: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 347
	i64 2040001226662520565, ; 77: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 141
	i64 2062890601515140263, ; 78: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 140
	i64 2064708342624596306, ; 79: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 320
	i64 2080945842184875448, ; 80: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 52
	i64 2092161280896733303, ; 81: CommunityToolkit.Maui.Maps => 0x1d08d999a8ad1077 => 176
	i64 2102659300918482391, ; 82: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 83: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 140
	i64 2133195048986300728, ; 84: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 202
	i64 2145898162032646099, ; 85: ko/Microsoft.Maui.Controls.resources => 0x1dc7c302481e97d3 => 343
	i64 2165252314452558154, ; 86: Xamarin.AndroidX.Camera.Camera2.dll => 0x1e0c85820c09814a => 243
	i64 2165310824878145998, ; 87: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 232
	i64 2165725771938924357, ; 88: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 242
	i64 2200176636225660136, ; 89: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 186
	i64 2262844636196693701, ; 90: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 260
	i64 2287834202362508563, ; 91: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 92: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 93: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 351
	i64 2304837677853103545, ; 94: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 289
	i64 2315304989185124968, ; 95: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 50
	i64 2329709569556905518, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 271
	i64 2335503487726329082, ; 97: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 135
	i64 2337758774805907496, ; 98: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 100
	i64 2379805940701141695, ; 99: ExoPlayer.Rtsp => 0x2106c4e4f1db1abf => 225
	i64 2405413894731521496, ; 100: da/Microsoft.Maui.Controls.resources => 0x2161bf315d42ddd8 => 330
	i64 2470498323731680442, ; 101: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 253
	i64 2479423007379663237, ; 102: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 299
	i64 2492380397191429704, ; 103: cs/Microsoft.Maui.Controls.resources => 0x2296b6c41bbdfe48 => 329
	i64 2497223385847772520, ; 104: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 105: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 233
	i64 2592350477072141967, ; 106: System.Xml.dll => 0x23f9e10627330e8f => 162
	i64 2612152650457191105, ; 107: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 192
	i64 2624866290265602282, ; 108: mscorlib.dll => 0x246d65fbde2db8ea => 165
	i64 2632269733008246987, ; 109: System.Net.NameResolution => 0x2487b36034f808cb => 66
	i64 2656907746661064104, ; 110: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 182
	i64 2668049510182046531, ; 111: MvvmHelpers => 0x2506d0e4c18e4b43 => 210
	i64 2706075432581334785, ; 112: System.Net.WebSockets => 0x258de944be6c0701 => 79
	i64 2783046991838674048, ; 113: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 100
	i64 2787234703088983483, ; 114: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 294
	i64 2789714023057451704, ; 115: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 190
	i64 2805351326970001192, ; 116: Microsoft.VisualStudio.DesignTools.XamlTapContract => 0x26ee9c2b2237b728 => 364
	i64 2815524396660695947, ; 117: System.Security.AccessControl => 0x2712c0857f68238b => 116
	i64 2923871038697555247, ; 118: Jsr305Binding => 0x2893ad37e69ec52f => 307
	i64 3017136373564924869, ; 119: System.Net.WebProxy => 0x29df058bd93f63c5 => 77
	i64 3017704767998173186, ; 120: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 305
	i64 3062772059105072826, ; 121: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0x2a8126f5e2f316ba => 362
	i64 3106852385031680087, ; 122: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 113
	i64 3107556380337382748, ; 123: pt/Microsoft.Maui.Controls.resources => 0x2b2042103982255c => 349
	i64 3110390492489056344, ; 124: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 120
	i64 3135773902340015556, ; 125: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 47
	i64 3188824379904900412, ; 126: ExoPlayer.Common.dll => 0x2c40fae0df563d3c => 215
	i64 3202009568827554833, ; 127: th/Microsoft.Maui.Controls.resources => 0x2c6fd2bce55e3c11 => 354
	i64 3281594302220646930, ; 128: System.Security.Principal => 0x2d8a90a198ceba12 => 127
	i64 3289520064315143713, ; 129: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 269
	i64 3303437397778967116, ; 130: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 236
	i64 3311221304742556517, ; 131: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 81
	i64 3325875462027654285, ; 132: System.Runtime.Numerics => 0x2e27e21c8958b48d => 109
	i64 3328853167529574890, ; 133: System.Net.Sockets.dll => 0x2e327651a008c1ea => 74
	i64 3344231637107183998, ; 134: Microsoft.Toolkit.Uwp.Notifications => 0x2e6918f49865917e => 201
	i64 3344514922410554693, ; 135: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 323
	i64 3402534845034375023, ; 136: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 212
	i64 3411255996856937470, ; 137: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 314
	i64 3429672777697402584, ; 138: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 198
	i64 3437845325506641314, ; 139: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 52
	i64 3493805808809882663, ; 140: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 296
	i64 3494946837667399002, ; 141: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 180
	i64 3508450208084372758, ; 142: System.Net.Ping => 0x30b084e02d03ad16 => 68
	i64 3522470458906976663, ; 143: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 295
	i64 3531994851595924923, ; 144: System.Numerics => 0x31042a9aade235bb => 82
	i64 3551103847008531295, ; 145: System.Private.CoreLib.dll => 0x31480e226177735f => 171
	i64 3571415421602489686, ; 146: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 147: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 181
	i64 3647754201059316852, ; 148: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 155
	i64 3655542548057982301, ; 149: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 180
	i64 3659371656528649588, ; 150: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 230
	i64 3716579019761409177, ; 151: netstandard.dll => 0x3393f0ed5c8c5c99 => 166
	i64 3727469159507183293, ; 152: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 288
	i64 3772598417116884899, ; 153: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 261
	i64 3869221888984012293, ; 154: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 184
	i64 3869649043256705283, ; 155: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3890352374528606784, ; 156: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 196
	i64 3919223565570527920, ; 157: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 121
	i64 3933965368022646939, ; 158: System.Net.Requests => 0x369840a8bfadc09b => 71
	i64 3966267475168208030, ; 159: System.Memory => 0x370b03412596249e => 61
	i64 4006972109285359177, ; 160: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 160
	i64 4009997192427317104, ; 161: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 112
	i64 4073500526318903918, ; 162: System.Private.Xml.dll => 0x3887fb25779ae26e => 87
	i64 4073631083018132676, ; 163: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 193
	i64 4148881117810174540, ; 164: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 104
	i64 4154383907710350974, ; 165: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 166: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 145
	i64 4168469861834746866, ; 167: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 117
	i64 4187479170553454871, ; 168: System.Linq.Expressions => 0x3a1cea1e912fa117 => 57
	i64 4201423742386704971, ; 169: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 255
	i64 4202567570116092282, ; 170: Newtonsoft.Json.Bson => 0x3a5284f05958a17a => 203
	i64 4205801962323029395, ; 171: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 172: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 51
	i64 4247996603072512073, ; 173: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 316
	i64 4282138915307457788, ; 174: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 91
	i64 4321177614414309855, ; 175: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x3bf7e8254e88e9df => 362
	i64 4356591372459378815, ; 176: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 357
	i64 4373617458794931033, ; 177: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 54
	i64 4388777479429739993, ; 178: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x3ce811dd63a4d5d9 => 361
	i64 4397634830160618470, ; 179: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 128
	i64 4477672992252076438, ; 180: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 151
	i64 4484706122338676047, ; 181: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 40
	i64 4523676002271688167, ; 182: MvvmHelpers.dll => 0x3ec7535b4a5cf5e7 => 210
	i64 4533124835995628778, ; 183: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 91
	i64 4603257529164880280, ; 184: QRCoder => 0x3fe20e556b83d998 => 209
	i64 4636684751163556186, ; 185: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 300
	i64 4671688737346305267, ; 186: PInvoke.Kernel32.dll => 0x40d52c27aab83cf3 => 204
	i64 4672453897036726049, ; 187: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 49
	i64 4679594760078841447, ; 188: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 327
	i64 4716677666592453464, ; 189: System.Xml.XmlSerializer => 0x417501590542f358 => 161
	i64 4725285941539738176, ; 190: Xamarin.AndroidX.Camera.Lifecycle => 0x41939687379f9240 => 245
	i64 4743821336939966868, ; 191: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 192: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 273
	i64 4794310189461587505, ; 193: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 233
	i64 4795410492532947900, ; 194: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 295
	i64 4809057822547766521, ; 195: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 196: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 66
	i64 4835744211636393215, ; 197: fi/Microsoft.Maui.Controls.resources => 0x431c03bd573d14ff => 334
	i64 4853321196694829351, ; 198: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 108
	i64 4980389795822155618, ; 199: Youth => 0x451de621cef5b762 => 0
	i64 5055365687667823624, ; 200: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 234
	i64 5081566143765835342, ; 201: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 98
	i64 5099468265966638712, ; 202: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 98
	i64 5103417709280584325, ; 203: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 204: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 205: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 280
	i64 5244375036463807528, ; 206: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 207: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 127
	i64 5272717148637201210, ; 208: ExoPlayer.UI => 0x492c744f85a1833a => 228
	i64 5278787618751394462, ; 209: System.Net.WebClient.dll => 0x4942055efc68329e => 75
	i64 5280980186044710147, ; 210: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 272
	i64 5290786973231294105, ; 211: System.Runtime.Loader => 0x496ca6b869b72699 => 108
	i64 5313383338227484527, ; 212: PInvoke.Windows.ShellScalingApi.dll => 0x49bcedfe9e87476f => 207
	i64 5348796042099802469, ; 213: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 281
	i64 5376510917114486089, ; 214: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 299
	i64 5389233738419247641, ; 215: ExoPlayer.UI.dll => 0x4aca67881e079a19 => 228
	i64 5408338804355907810, ; 216: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 297
	i64 5415418483457405500, ; 217: PInvoke.User32.dll => 0x4b276e6b2890323c => 205
	i64 5423376490970181369, ; 218: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 105
	i64 5440320908473006344, ; 219: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 220: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 221: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 251
	i64 5457765010617926378, ; 222: System.Xml.Serialization => 0x4bbde05c557002ea => 156
	i64 5507995362134886206, ; 223: System.Core.dll => 0x4c705499688c873e => 21
	i64 5527431512186326818, ; 224: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 48
	i64 5570799893513421663, ; 225: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 42
	i64 5573260873512690141, ; 226: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5573669443803475672, ; 227: Microsoft.Maui.Controls.Maps => 0x4d59a6d41d5aeed8 => 195
	i64 5574231584441077149, ; 228: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 237
	i64 5591791169662171124, ; 229: System.Linq.Parallel => 0x4d9a087135e137f4 => 58
	i64 5650097808083101034, ; 230: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 118
	i64 5692067934154308417, ; 231: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 302
	i64 5703838680789880885, ; 232: ExoPlayer.SmoothStreaming.dll => 0x4f281b0f589d1035 => 226
	i64 5724799082821825042, ; 233: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 264
	i64 5757522595884336624, ; 234: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 250
	i64 5783556987928984683, ; 235: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 236: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 270
	i64 5939174725034091446, ; 237: pt-BR/Microsoft.Maui.Controls.resources => 0x526c2ff200a2a3b6 => 348
	i64 5959344983920014087, ; 238: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 291
	i64 5979151488806146654, ; 239: System.Formats.Asn1 => 0x52fa3699a489d25e => 37
	i64 5984759512290286505, ; 240: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 123
	i64 6068057819846744445, ; 241: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 350
	i64 6102788177522843259, ; 242: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 291
	i64 6222399776351216807, ; 243: System.Text.Json.dll => 0x565a67a0ffe264a7 => 136
	i64 6251069312384999852, ; 244: System.Transactions.Local => 0x56c0426b870da1ac => 148
	i64 6278736998281604212, ; 245: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 84
	i64 6284145129771520194, ; 246: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 89
	i64 6313127126423224581, ; 247: ExoPlayer.DataSource => 0x579cbbac5056c105 => 220
	i64 6319713645133255417, ; 248: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 274
	i64 6357457916754632952, ; 249: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 365
	i64 6401687960814735282, ; 250: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 271
	i64 6504860066809920875, ; 251: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 242
	i64 6548213210057960872, ; 252: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 257
	i64 6557084851308642443, ; 253: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 303
	i64 6560151584539558821, ; 254: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 187
	i64 6589202984700901502, ; 255: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 309
	i64 6591971792923354531, ; 256: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 272
	i64 6597152804937602598, ; 257: ExoPlayer.Dash => 0x5b8dcb85db471626 => 218
	i64 6617685658146568858, ; 258: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6713440830605852118, ; 259: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 95
	i64 6714554531365818039, ; 260: PInvoke.User32 => 0x5d2ee3c5630c8eb7 => 205
	i64 6734140735192831707, ; 261: uk/Microsoft.Maui.Controls.resources => 0x5d747951d4a816db => 356
	i64 6739853162153639747, ; 262: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6772837112740759457, ; 263: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 104
	i64 6777482997383978746, ; 264: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 349
	i64 6786606130239981554, ; 265: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 266: System.Windows => 0x5e5884bd523ca188 => 153
	i64 6814185388980153342, ; 267: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 157
	i64 6876862101832370452, ; 268: System.Xml.Linq => 0x5f6f85a57d108914 => 154
	i64 6894844156784520562, ; 269: System.Numerics.Vectors => 0x5faf683aead1ad72 => 81
	i64 6985504089449394141, ; 270: ZXing.Net.MAUI.Controls.dll => 0x60f17ef564ab6fdd => 326
	i64 7011053663211085209, ; 271: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 266
	i64 7029064935117817420, ; 272: CommunityToolkit.Common => 0x618c415120da064c => 172
	i64 7060896174307865760, ; 273: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 142
	i64 7083547580668757502, ; 274: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 86
	i64 7101497697220435230, ; 275: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 276: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 267
	i64 7111139937678078858, ; 277: ExoPlayer.Database => 0x62afd818cd65338a => 219
	i64 7112547816752919026, ; 278: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 50
	i64 7141281584637745974, ; 279: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 315
	i64 7192745174564810625, ; 280: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 232
	i64 7220009545223068405, ; 281: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 353
	i64 7270811800166795866, ; 282: System.Linq => 0x64e71ccf51a90a5a => 60
	i64 7299370801165188114, ; 283: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 53
	i64 7316205155833392065, ; 284: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 285: System.Reflection => 0x65d67f295d0740ad => 96
	i64 7349431895026339542, ; 286: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 231
	i64 7377312882064240630, ; 287: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7439799228237803094, ; 288: it/Microsoft.Maui.Controls.resources => 0x673f79faf756ee56 => 341
	i64 7488575175965059935, ; 289: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 154
	i64 7489048572193775167, ; 290: System.ObjectModel => 0x67ee71ff6b419e3f => 83
	i64 7496222613193209122, ; 291: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 212
	i64 7554258198599408819, ; 292: ExoPlayer.Common => 0x68d61dceb5199cb3 => 215
	i64 7592577537120840276, ; 293: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 294: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 44
	i64 7642002156153824904, ; 295: ro/Microsoft.Maui.Controls.resources => 0x6a0dd878d2516688 => 350
	i64 7654504624184590948, ; 296: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7694700312542370399, ; 297: System.Net.Mail => 0x6ac9112a7e2cda5f => 65
	i64 7702051135216468858, ; 298: CommunityToolkit.Common.dll => 0x6ae32eb34478c37a => 172
	i64 7708790323521193081, ; 299: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 344
	i64 7714652370974252055, ; 300: System.Private.CoreLib => 0x6b0ff375198b9c17 => 171
	i64 7725404731275645577, ; 301: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 275
	i64 7735176074855944702, ; 302: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 303: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 318
	i64 7756332380610150586, ; 304: Xamarin.Google.AutoValue.Annotations => 0x6ba407349220c0ba => 306
	i64 7791074099216502080, ; 305: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 46
	i64 7820441508502274321, ; 306: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7820573243100514395, ; 307: Validation.dll => 0x6c8841edeeee485b => 213
	i64 7836164640616011524, ; 308: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 239
	i64 8024811125417330653, ; 309: ExoPlayer.Extractor.dll => 0x6f5ddb33881a47dd => 222
	i64 8025517457475554965, ; 310: WindowsBase => 0x6f605d9b4786ce95 => 164
	i64 8031450141206250471, ; 311: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 107
	i64 8059634771736097245, ; 312: ExoPlayer.Decoder => 0x6fd9931f84b771dd => 221
	i64 8064050204834738623, ; 313: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 314: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 269
	i64 8085230611270010360, ; 315: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 62
	i64 8087206902342787202, ; 316: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 211
	i64 8103644804370223335, ; 317: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 318: System.Reflection.Extensions => 0x70995ab73cf916ec => 92
	i64 8167236081217502503, ; 319: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 167
	i64 8185542183669246576, ; 320: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 321: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 322
	i64 8246048515196606205, ; 322: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 199
	i64 8264926008854159966, ; 323: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 324: System.Runtime.Extensions => 0x730ea0b15c929a72 => 102
	i64 8318905602908530212, ; 325: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8320777595162576093, ; 326: Xamarin.AndroidX.Camera.View => 0x737957232eb1c4dd => 246
	i64 8368701292315763008, ; 327: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8398329775253868912, ; 328: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 252
	i64 8400357532724379117, ; 329: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 285
	i64 8410671156615598628, ; 330: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 90
	i64 8426919725312979251, ; 331: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 273
	i64 8515752553183989521, ; 332: el/Microsoft.Maui.Controls.resources => 0x762e07d427a84f11 => 332
	i64 8518412311883997971, ; 333: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8557640666902467377, ; 334: tr/Microsoft.Maui.Controls.resources => 0x76c2d8d8a2289331 => 355
	i64 8563666267364444763, ; 335: System.Private.Uri => 0x76d841191140ca5b => 85
	i64 8573305974629105867, ; 336: sk/Microsoft.Maui.Controls.resources => 0x76fa805c508080cb => 352
	i64 8598790081731763592, ; 337: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 263
	i64 8599632406834268464, ; 338: CommunityToolkit.Maui => 0x7758081c784b4930 => 174
	i64 8601935802264776013, ; 339: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 297
	i64 8614108721271900878, ; 340: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 348
	i64 8623059219396073920, ; 341: System.Net.Quic.dll => 0x77ab42ac514299c0 => 70
	i64 8626175481042262068, ; 342: Java.Interop => 0x77b654e585b55834 => 167
	i64 8629545377263870989, ; 343: Xamarin.AndroidX.Camera.Core.dll => 0x77c24dcca0ed640d => 244
	i64 8638972117149407195, ; 344: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 345: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 284
	i64 8648495978913578441, ; 346: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8684531736582871431, ; 347: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 43
	i64 8690461831448123647, ; 348: ExoPlayer.Hls => 0x789ab8fddd8e58ff => 223
	i64 8725526185868997716, ; 349: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 211
	i64 8853378295825400934, ; 350: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 319
	i64 8865843278589904504, ; 351: CommunityToolkit.Maui.Maps.dll => 0x7b09cd7d16a2c678 => 176
	i64 8906941675023136603, ; 352: he/Microsoft.Maui.Controls.resources => 0x7b9bd0432ee0775b => 336
	i64 8941376889969657626, ; 353: System.Xml.XDocument => 0x7c1626e87187471a => 157
	i64 8951477988056063522, ; 354: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 287
	i64 8954753533646919997, ; 355: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 111
	i64 9041985878101337471, ; 356: BouncyCastle.Crypto => 0x7d7b963fe854257f => 208
	i64 9131857290992441898, ; 357: Xamarin.AndroidX.Camera.Core => 0x7ebadfd2d12a5a2a => 244
	i64 9138683372487561558, ; 358: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 120
	i64 9225789786819666723, ; 359: ExoPlayer.SmoothStreaming => 0x800896ee47d02323 => 226
	i64 9271551713462316287, ; 360: QRCoder.dll => 0x80ab2b291d95ecff => 209
	i64 9312692141327339315, ; 361: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 302
	i64 9324707631942237306, ; 362: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 238
	i64 9427266486299436557, ; 363: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 191
	i64 9468215723722196442, ; 364: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 158
	i64 9554839972845591462, ; 365: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 130
	i64 9575902398040817096, ; 366: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 308
	i64 9584643793929893533, ; 367: System.IO.dll => 0x85037ebfbbd7f69d => 56
	i64 9659729154652888475, ; 368: System.Text.RegularExpressions => 0x860e407c9991dd9b => 137
	i64 9662334977499516867, ; 369: System.Numerics.dll => 0x8617827802b0cfc3 => 82
	i64 9667360217193089419, ; 370: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 371: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 253
	i64 9702891218465930390, ; 372: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9711637524876806384, ; 373: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 281
	i64 9722368759809762166, ; 374: ExoPlayer.Core => 0x86eccae02fd0e376 => 217
	i64 9780093022148426479, ; 375: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 304
	i64 9808709177481450983, ; 376: Mono.Android.dll => 0x881f890734e555e7 => 170
	i64 9825649861376906464, ; 377: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 250
	i64 9834056768316610435, ; 378: System.Transactions.dll => 0x8879968718899783 => 149
	i64 9836529246295212050, ; 379: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 93
	i64 9875200773399460291, ; 380: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 313
	i64 9884103019517044980, ; 381: hi/Microsoft.Maui.Controls.resources => 0x892b6353f9ade8f4 => 337
	i64 9907349773706910547, ; 382: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 263
	i64 9933555792566666578, ; 383: System.Linq.Queryable.dll => 0x89db145cf475c552 => 59
	i64 9944345468791389265, ; 384: ExoPlayer.Core.dll => 0x8a01698437137c51 => 217
	i64 9956195530459977388, ; 385: Microsoft.Maui => 0x8a2b8315b36616ac => 197
	i64 9974604633896246661, ; 386: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 156
	i64 9991543690424095600, ; 387: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 333
	i64 9994308163963284983, ; 388: Newtonsoft.Json.Bson.dll => 0x8ab2ea52b0d16df7 => 203
	i64 10017511394021241210, ; 389: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 186
	i64 10038780035334861115, ; 390: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10051358222726253779, ; 391: System.Private.Xml => 0x8b7d990c97ccccd3 => 87
	i64 10075958396420552332, ; 392: ExoPlayer => 0x8bd4fec6de42f68c => 214
	i64 10078727084704864206, ; 393: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 78
	i64 10089571585547156312, ; 394: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 46
	i64 10092835686693276772, ; 395: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 194
	i64 10099427421688105860, ; 396: ExoPlayer.Container.dll => 0x8c285fbb208f0b84 => 216
	i64 10105485790837105934, ; 397: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 142
	i64 10226222362177979215, ; 398: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 320
	i64 10226489408795347955, ; 399: sv/Microsoft.Maui.Controls.resources => 0x8debc9ef5e8a8bf3 => 353
	i64 10229024438826829339, ; 400: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 257
	i64 10236703004850800690, ; 401: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 73
	i64 10245369515835430794, ; 402: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 90
	i64 10252714262739571204, ; 403: Microsoft.Maui.Controls.HotReload.Forms => 0x8e48f54cfe2c5204 => 361
	i64 10321854143672141184, ; 404: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 317
	i64 10360651442923773544, ; 405: System.Text.Encoding => 0x8fc86d98211c1e68 => 134
	i64 10364469296367737616, ; 406: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 89
	i64 10376576884623852283, ; 407: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 296
	i64 10406448008575299332, ; 408: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 323
	i64 10430153318873392755, ; 409: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 254
	i64 10478860563980794270, ; 410: PInvoke.Windows.ShellScalingApi => 0x916c6429deecb99e => 207
	i64 10539579458193346866, ; 411: PInvoke.Windows.Core.dll => 0x92441bad179e5132 => 206
	i64 10546663366131771576, ; 412: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 111
	i64 10566960649245365243, ; 413: System.Globalization.dll => 0x92a562b96dcd13fb => 41
	i64 10595762989148858956, ; 414: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 158
	i64 10670374202010151210, ; 415: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 416: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 102
	i64 10751983078752350209, ; 417: Microsoft.Toolkit.Uwp.Notifications.dll => 0x9536b7a4c80b7001 => 201
	i64 10785150219063592792, ; 418: System.Net.Primitives => 0x95ac8cfb68830758 => 69
	i64 10822644899632537592, ; 419: System.Linq.Queryable => 0x9631c23204ca5ff8 => 59
	i64 10830817578243619689, ; 420: System.Formats.Tar => 0x964ecb340a447b69 => 38
	i64 10847732767863316357, ; 421: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 240
	i64 10880838204485145808, ; 422: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 174
	i64 10899834349646441345, ; 423: System.Web => 0x9743fd975946eb81 => 152
	i64 10943875058216066601, ; 424: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 55
	i64 10964653383833615866, ; 425: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 10984274332520666918, ; 426: zh-Hant/Microsoft.Maui.Controls.resources => 0x986ffb4ee955d726 => 360
	i64 11002576679268595294, ; 427: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 185
	i64 11009005086950030778, ; 428: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 197
	i64 11019817191295005410, ; 429: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 237
	i64 11023048688141570732, ; 430: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 431: System.Xml => 0x992e31d0412bf7fc => 162
	i64 11071824625609515081, ; 432: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 309
	i64 11103762113411436187, ; 433: ExoPlayer.Container => 0x9a187ccfd8544e9b => 216
	i64 11128133081269842136, ; 434: vi/Microsoft.Maui.Controls.resources => 0x9a6f1213fa5cb0d8 => 357
	i64 11136029745144976707, ; 435: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 307
	i64 11150130305267896488, ; 436: zh-Hans/Microsoft.Maui.Controls.resources => 0x9abd386fcccf90a8 => 359
	i64 11162124722117608902, ; 437: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 301
	i64 11188319605227840848, ; 438: System.Threading.Overlapped => 0x9b44e5671724e550 => 139
	i64 11226290749488709958, ; 439: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 187
	i64 11235648312900863002, ; 440: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 88
	i64 11329751333533450475, ; 441: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 146
	i64 11340910727871153756, ; 442: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 256
	i64 11347436699239206956, ; 443: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 161
	i64 11366194298415195693, ; 444: CommunityToolkit.Maui.MediaElement => 0x9dbcd57e651ba62d => 177
	i64 11387716764763632936, ; 445: ExoPlayer.dll => 0x9e094c10167f3528 => 214
	i64 11392833485892708388, ; 446: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 286
	i64 11432101114902388181, ; 447: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 448: Mono.Android.Export => 0x9edabf8623efc131 => 168
	i64 11448276831755070604, ; 449: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 450: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 106
	i64 11508496261504176197, ; 451: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 266
	i64 11517440453979132662, ; 452: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 189
	i64 11529969570048099689, ; 453: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 301
	i64 11530571088791430846, ; 454: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 184
	i64 11580057168383206117, ; 455: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 235
	i64 11591352189662810718, ; 456: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 294
	i64 11597940890313164233, ; 457: netstandard => 0xa0f429ca8d1805c9 => 166
	i64 11672361001936329215, ; 458: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 267
	i64 11687474876782398100, ; 459: ExoPlayer.Decoder.dll => 0xa232407a3feaca94 => 221
	i64 11692977985522001935, ; 460: System.Threading.Overlapped.dll => 0xa245cd869980680f => 139
	i64 11705530742807338875, ; 461: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 336
	i64 11707554492040141440, ; 462: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 58
	i64 11743665907891708234, ; 463: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 143
	i64 11888774080858266727, ; 464: hu/Microsoft.Maui.Controls.resources => 0xa4fd6909806d9c67 => 339
	i64 11991047634523762324, ; 465: System.Net => 0xa668c24ad493ae94 => 80
	i64 12040886584167504988, ; 466: System.Net.ServicePoint => 0xa719d28d8e121c5c => 73
	i64 12063623837170009990, ; 467: System.Security => 0xa76a99f6ce740786 => 129
	i64 12096697103934194533, ; 468: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 469: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 470: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 92
	i64 12124060477258521817, ; 471: id/Microsoft.Maui.Controls.resources => 0xa84150c49e58dcd9 => 340
	i64 12137774235383566651, ; 472: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 298
	i64 12145679461940342714, ; 473: System.Text.Json => 0xa88e1f1ebcb62fba => 136
	i64 12191646537372739477, ; 474: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 229
	i64 12201331334810686224, ; 475: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 112
	i64 12269460666702402136, ; 476: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 477: System.Runtime.Handles => 0xab24db6c07db5dff => 103
	i64 12341818387765915815, ; 478: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 175
	i64 12361848888325255784, ; 479: Youth.dll => 0xab8e1c116baf3268 => 0
	i64 12375446203996702057, ; 480: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 481: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 190
	i64 12451044538927396471, ; 482: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 265
	i64 12466513435562512481, ; 483: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 279
	i64 12475113361194491050, ; 484: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 365
	i64 12487638416075308985, ; 485: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 259
	i64 12517810545449516888, ; 486: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12533156002265635263, ; 487: ru/Microsoft.Maui.Controls.resources => 0xadeeb6fb059919bf => 351
	i64 12538491095302438457, ; 488: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 247
	i64 12550732019250633519, ; 489: System.IO.Compression => 0xae2d28465e8e1b2f => 45
	i64 12681088699309157496, ; 490: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 341
	i64 12699999919562409296, ; 491: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 492: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 248
	i64 12708238894395270091, ; 493: System.IO => 0xb05cbbf17d3ba3cb => 56
	i64 12708922737231849740, ; 494: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 133
	i64 12717050818822477433, ; 495: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 113
	i64 12753841065332862057, ; 496: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 303
	i64 12760970142902902754, ; 497: Xamarin.AndroidX.Camera.Lifecycle.dll => 0xb11812bc0517dfe2 => 245
	i64 12823819093633476069, ; 498: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 354
	i64 12828192437253469131, ; 499: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 321
	i64 12835242264250840079, ; 500: System.IO.Pipes => 0xb21ff0d5d6c0740f => 54
	i64 12843321153144804894, ; 501: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 188
	i64 12843770487262409629, ; 502: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 503: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 76
	i64 12963460477875535204, ; 504: CommunityToolkit.Diagnostics => 0xb3e7769f0b963d64 => 173
	i64 12982280885948128408, ; 505: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 258
	i64 13068258254871114833, ; 506: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 110
	i64 13081516019875753442, ; 507: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 208
	i64 13129914918964716986, ; 508: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 262
	i64 13173818576982874404, ; 509: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 101
	i64 13221551921002590604, ; 510: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 328
	i64 13222659110913276082, ; 511: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 342
	i64 13239674268801700939, ; 512: ca/Microsoft.Maui.Controls.resources => 0xb7bcc599c5ce144b => 328
	i64 13343850469010654401, ; 513: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 169
	i64 13370592475155966277, ; 514: System.Runtime.Serialization => 0xb98de304062ea945 => 114
	i64 13385736475199088545, ; 515: ExoPlayer.Extractor => 0xb9c3b0674d3b27a1 => 222
	i64 13401370062847626945, ; 516: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 298
	i64 13402939433517888790, ; 517: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 311
	i64 13404347523447273790, ; 518: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 252
	i64 13431476299110033919, ; 519: System.Net.WebClient => 0xba663087f18829ff => 75
	i64 13454009404024712428, ; 520: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 312
	i64 13463706743370286408, ; 521: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 84
	i64 13465488254036897740, ; 522: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 318
	i64 13467053111158216594, ; 523: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 356
	i64 13491513212026656886, ; 524: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 241
	i64 13545416393490209236, ; 525: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 340
	i64 13572454107664307259, ; 526: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 288
	i64 13578472628727169633, ; 527: System.Xml.XPath => 0xbc706ce9fba5c261 => 159
	i64 13580399111273692417, ; 528: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 529: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 258
	i64 13647894001087880694, ; 530: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 531: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 234
	i64 13702626353344114072, ; 532: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 533: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 116
	i64 13713329104121190199, ; 534: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 535: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 536: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 335
	i64 13768883594457632599, ; 537: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 51
	i64 13814445057219246765, ; 538: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 338
	i64 13828521679616088467, ; 539: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 319
	i64 13865727802090930648, ; 540: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 310
	i64 13881769479078963060, ; 541: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 542: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 122
	i64 13928444506500929300, ; 543: System.Windows.dll => 0xc14bc67b8bba9714 => 153
	i64 13959074834287824816, ; 544: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 265
	i64 13975254687929967048, ; 545: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 310
	i64 13982638193275851912, ; 546: ExoPlayer.Hls.dll => 0xc20c4f5a85045488 => 223
	i64 14075334701871371868, ; 547: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 130
	i64 14100563506285742564, ; 548: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 330
	i64 14124974489674258913, ; 549: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 247
	i64 14125464355221830302, ; 550: System.Threading.dll => 0xc407bafdbc707a9e => 147
	i64 14178052285788134900, ; 551: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 230
	i64 14212104595480609394, ; 552: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 119
	i64 14220608275227875801, ; 553: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 554: System.ServiceProcess => 0xc56e43f6938e2a74 => 131
	i64 14232023429000439693, ; 555: System.Resources.Writer.dll => 0xc5824de7789ba78d => 99
	i64 14254574811015963973, ; 556: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 133
	i64 14261073672896646636, ; 557: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 286
	i64 14298246716367104064, ; 558: System.Web.dll => 0xc66d93a217f4e840 => 152
	i64 14316535876961222820, ; 559: Xamarin.AndroidX.Camera.Camera2 => 0xc6ae8d872068c0a4 => 243
	i64 14327695147300244862, ; 560: System.Reflection.dll => 0xc6d632d338eb4d7e => 96
	i64 14327709162229390963, ; 561: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 124
	i64 14331727281556788554, ; 562: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 231
	i64 14346402571976470310, ; 563: System.Net.Ping.dll => 0xc718a920f3686f26 => 68
	i64 14461014870687870182, ; 564: System.Net.Requests.dll => 0xc8afd8683afdece6 => 71
	i64 14486659737292545672, ; 565: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 270
	i64 14495724990987328804, ; 566: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 289
	i64 14522721392235705434, ; 567: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 332
	i64 14551742072151931844, ; 568: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 135
	i64 14556034074661724008, ; 569: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 175
	i64 14561513370130550166, ; 570: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 123
	i64 14574160591280636898, ; 571: System.Net.Quic => 0xca41d1d72ec783e2 => 70
	i64 14622043554576106986, ; 572: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 110
	i64 14644440854989303794, ; 573: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 280
	i64 14669215534098758659, ; 574: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 182
	i64 14690985099581930927, ; 575: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 151
	i64 14792063746108907174, ; 576: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 312
	i64 14832630590065248058, ; 577: System.Security.Claims => 0xcdd816ef5d6e873a => 117
	i64 14852515768018889994, ; 578: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 256
	i64 14889905118082851278, ; 579: GoogleGson.dll => 0xcea391d0969961ce => 179
	i64 14892012299694389861, ; 580: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 360
	i64 14912225920358050525, ; 581: System.Security.Principal.Windows => 0xcef2de7759506add => 126
	i64 14935719434541007538, ; 582: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14954917835170835695, ; 583: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 183
	i64 14984936317414011727, ; 584: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 76
	i64 14987728460634540364, ; 585: System.IO.Compression.dll => 0xcfff1ba06622494c => 45
	i64 14988210264188246988, ; 586: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 259
	i64 15015154896917945444, ; 587: System.Net.Security.dll => 0xd0608bd33642dc64 => 72
	i64 15024878362326791334, ; 588: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 62
	i64 15071021337266399595, ; 589: System.Resources.Reader.dll => 0xd127060e7a18a96b => 97
	i64 15076659072870671916, ; 590: System.ObjectModel.dll => 0xd13b0d8c1620662c => 83
	i64 15078961294903233180, ; 591: PInvoke.Kernel32 => 0xd1433b67ec924a9c => 204
	i64 15115185479366240210, ; 592: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 42
	i64 15133485256822086103, ; 593: System.Linq.dll => 0xd204f0a9127dd9d7 => 60
	i64 15138356091203993725, ; 594: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 189
	i64 15150743910298169673, ; 595: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 287
	i64 15227001540531775957, ; 596: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 181
	i64 15234786388537674379, ; 597: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 598: System.Globalization.Calendars.dll => 0xd3a489469852174e => 39
	i64 15272359115529052076, ; 599: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 249
	i64 15273147323526128252, ; 600: de/Microsoft.Maui.Controls.resources => 0xd3f51e91f4fba27c => 331
	i64 15279429628684179188, ; 601: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 322
	i64 15299439993936780255, ; 602: System.Xml.XPath.dll => 0xd452879d55019bdf => 159
	i64 15310474576322227775, ; 603: ExoPlayer.Ext.MediaSession.dll => 0xd479bb824055ee3f => 224
	i64 15338463749992804988, ; 604: System.Resources.Reader => 0xd4dd2b839286f27c => 97
	i64 15370334346939861994, ; 605: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 254
	i64 15391712275433856905, ; 606: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 183
	i64 15443314347085689186, ; 607: nl/Microsoft.Maui.Controls.resources => 0xd651ac9394bc7162 => 346
	i64 15474781042002767710, ; 608: hr/Microsoft.Maui.Controls.resources => 0xd6c1775e69862f5e => 338
	i64 15478373401424648762, ; 609: es/Microsoft.Maui.Controls.resources => 0xd6ce3a99c4c55a3a => 333
	i64 15526743539506359484, ; 610: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 134
	i64 15527772828719725935, ; 611: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 612: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 64
	i64 15541854775306130054, ; 613: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 124
	i64 15557562860424774966, ; 614: System.Net.Sockets => 0xd7e790fe7a6dc536 => 74
	i64 15582737692548360875, ; 615: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 278
	i64 15609085926864131306, ; 616: System.dll => 0xd89e9cf3334914ea => 163
	i64 15661133872274321916, ; 617: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 155
	i64 15664356999916475676, ; 618: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 331
	i64 15710114879900314733, ; 619: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 620: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 339
	i64 15750144475371186037, ; 621: Xamarin.AndroidX.Camera.View.dll => 0xda93c0f3d794a775 => 246
	i64 15755368083429170162, ; 622: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 48
	i64 15777549416145007739, ; 623: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 293
	i64 15817206913877585035, ; 624: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 143
	i64 15847085070278954535, ; 625: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 138
	i64 15885744048853936810, ; 626: System.Resources.Writer => 0xdc75800bd0b6eaaa => 99
	i64 15928521404965645318, ; 627: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 193
	i64 15930129725311349754, ; 628: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 316
	i64 15934062614519587357, ; 629: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 122
	i64 15937190497610202713, ; 630: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 119
	i64 15963349826457351533, ; 631: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 141
	i64 15971679995444160383, ; 632: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 38
	i64 15995174293784908801, ; 633: nb/Microsoft.Maui.Controls.resources => 0xddfa46462d825401 => 345
	i64 16018552496348375205, ; 634: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 67
	i64 16048255734569022341, ; 635: ExoPlayer.Transformer => 0xdeb6db90339cb385 => 227
	i64 16054465462676478687, ; 636: System.Globalization.Extensions => 0xdecceb47319bdadf => 40
	i64 16069846902195211555, ; 637: ExoPlayer.DataSource.dll => 0xdf03909da841cd23 => 220
	i64 16154507427712707110, ; 638: System => 0xe03056ea4e39aa26 => 163
	i64 16182611612321266217, ; 639: Microsoft.Maui.Maps => 0xe0942f85b2853a29 => 200
	i64 16198848395322856833, ; 640: ms/Microsoft.Maui.Controls.resources => 0xe0cddeca55a01581 => 344
	i64 16219561732052121626, ; 641: System.Net.Security => 0xe1177575db7c781a => 72
	i64 16274182383641215830, ; 642: zxing.dll => 0xe1d982a752dac356 => 324
	i64 16315482530584035869, ; 643: WindowsBase.dll => 0xe26c3ceb1e8d821d => 164
	i64 16321164108206115771, ; 644: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 185
	i64 16337011941688632206, ; 645: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 126
	i64 16361933716545543812, ; 646: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 264
	i64 16423015068819898779, ; 647: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 321
	i64 16454459195343277943, ; 648: System.Net.NetworkInformation => 0xe459fb756d988f77 => 67
	i64 16491294355724214223, ; 649: zh-HK/Microsoft.Maui.Controls.resources => 0xe4dcd8d787589fcf => 358
	i64 16496768397145114574, ; 650: Mono.Android.Export.dll => 0xe4f04b741db987ce => 168
	i64 16579050217386591297, ; 651: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 311
	i64 16589693266713801121, ; 652: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 277
	i64 16621146507174665210, ; 653: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 251
	i64 16648892297579399389, ; 654: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 178
	i64 16649148416072044166, ; 655: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 199
	i64 16677317093839702854, ; 656: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 285
	i64 16690058410772333787, ; 657: PInvoke.Windows.Core => 0xe79effb2669b04db => 206
	i64 16702652415771857902, ; 658: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 150
	i64 16709499819875633724, ; 659: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 44
	i64 16737304880976948124, ; 660: ja/Microsoft.Maui.Controls.resources => 0xe846da1c780aeb9c => 342
	i64 16737807731308835127, ; 661: System.Runtime.Intrinsics => 0xe848a3736f733137 => 107
	i64 16758309481308491337, ; 662: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 47
	i64 16762783179241323229, ; 663: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 95
	i64 16765015072123548030, ; 664: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16822611501064131242, ; 665: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 666: mscorlib => 0xe99c30c1484d7f4f => 165
	i64 16856067890322379635, ; 667: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16885326587688996227, ; 668: ZXing.Net.MAUI.dll => 0xea54bb11b7a94d83 => 325
	i64 16890310621557459193, ; 669: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 137
	i64 16933958494752847024, ; 670: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 77
	i64 16977952268158210142, ; 671: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 53
	i64 16989020923549080504, ; 672: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 277
	i64 16998075588627545693, ; 673: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 283
	i64 17008137082415910100, ; 674: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 675: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 236
	i64 17026344819618783825, ; 676: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0xec49ba676cb0a251 => 363
	i64 17027804579603049667, ; 677: Microsoft.Maui.Controls.Maps.dll => 0xec4eea0c48026cc3 => 195
	i64 17031351772568316411, ; 678: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 282
	i64 17037200463775726619, ; 679: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 268
	i64 17040771374769818752, ; 680: zxing => 0xec7cfb478bcccc80 => 324
	i64 17062143951396181894, ; 681: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 682: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 359
	i64 17118171214553292978, ; 683: System.Threading.Channels => 0xed8ff6060fc420b2 => 138
	i64 17137864900836977098, ; 684: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 192
	i64 17187273293601214786, ; 685: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 686: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 687: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 121
	i64 17230721278011714856, ; 688: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 86
	i64 17234219099804750107, ; 689: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 148
	i64 17260702271250283638, ; 690: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17306917412052548875, ; 691: ZXing.Net.MAUI => 0xf02e85b0b66a3d0b => 325
	i64 17333249706306540043, ; 692: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 693: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 78
	i64 17360349973592121190, ; 694: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 308
	i64 17375848869554566964, ; 695: ExoPlayer.Database.dll => 0xf1236a7c54ac3734 => 219
	i64 17438153253682247751, ; 696: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 352
	i64 17470386307322966175, ; 697: System.Threading.Timer => 0xf27347c8d0d5709f => 146
	i64 17472189583225440952, ; 698: ExoPlayer.Transformer.dll => 0xf279afdab46ecab8 => 227
	i64 17482873938501421891, ; 699: fr/Microsoft.Maui.Controls.resources => 0xf29fa538054fcb43 => 335
	i64 17509662556995089465, ; 700: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 79
	i64 17522591619082469157, ; 701: GoogleGson => 0xf32cc03d27a5bf25 => 179
	i64 17590473451926037903, ; 702: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 229
	i64 17627500474728259406, ; 703: System.Globalization => 0xf4a176498a351f4e => 41
	i64 17685921127322830888, ; 704: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 705: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 358
	i64 17704177640604968747, ; 706: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 279
	i64 17710060891934109755, ; 707: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 276
	i64 17712670374920797664, ; 708: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 106
	i64 17777860260071588075, ; 709: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 109
	i64 17790600151040787804, ; 710: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 191
	i64 17838668724098252521, ; 711: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 712: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 317
	i64 17928294245072900555, ; 713: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 43
	i64 17969331831154222830, ; 714: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 315
	i64 17986907704309214542, ; 715: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 314
	i64 17992315986609351877, ; 716: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 160
	i64 18025913125965088385, ; 717: System.Threading => 0xfa28e87b91334681 => 147
	i64 18070190158559153715, ; 718: ExoPlayer.Rtsp.dll => 0xfac6363590ad8e33 => 225
	i64 18099568558057551825, ; 719: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 346
	i64 18116111925905154859, ; 720: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 241
	i64 18121036031235206392, ; 721: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 282
	i64 18146411883821974900, ; 722: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 37
	i64 18146811631844267958, ; 723: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 724: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 145
	i64 18245806341561545090, ; 725: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 726: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 262
	i64 18305135509493619199, ; 727: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 284
	i64 18318849532986632368, ; 728: System.Security.dll => 0xfe39a097c37fa8b0 => 129
	i64 18335459783622540540, ; 729: ZXing.Net.MAUI.Controls => 0xfe74a3871c483cfc => 326
	i64 18380184030268848184, ; 730: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 300
	i64 18439108438687598470 ; 731: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 93
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [732 x i32] [
	i32 261, ; 0
	i32 173, ; 1
	i32 188, ; 2
	i32 170, ; 3
	i32 198, ; 4
	i32 57, ; 5
	i32 248, ; 6
	i32 150, ; 7
	i32 290, ; 8
	i32 364, ; 9
	i32 293, ; 10
	i32 255, ; 11
	i32 131, ; 12
	i32 363, ; 13
	i32 55, ; 14
	i32 292, ; 15
	i32 334, ; 16
	i32 94, ; 17
	i32 200, ; 18
	i32 274, ; 19
	i32 128, ; 20
	i32 313, ; 21
	i32 144, ; 22
	i32 249, ; 23
	i32 18, ; 24
	i32 337, ; 25
	i32 260, ; 26
	i32 275, ; 27
	i32 149, ; 28
	i32 218, ; 29
	i32 103, ; 30
	i32 94, ; 31
	i32 327, ; 32
	i32 305, ; 33
	i32 345, ; 34
	i32 35, ; 35
	i32 213, ; 36
	i32 27, ; 37
	i32 240, ; 38
	i32 283, ; 39
	i32 49, ; 40
	i32 114, ; 41
	i32 224, ; 42
	i32 69, ; 43
	i32 194, ; 44
	i32 306, ; 45
	i32 64, ; 46
	i32 169, ; 47
	i32 144, ; 48
	i32 343, ; 49
	i32 304, ; 50
	i32 239, ; 51
	i32 278, ; 52
	i32 268, ; 53
	i32 347, ; 54
	i32 39, ; 55
	i32 88, ; 56
	i32 80, ; 57
	i32 202, ; 58
	i32 65, ; 59
	i32 61, ; 60
	i32 85, ; 61
	i32 238, ; 62
	i32 105, ; 63
	i32 290, ; 64
	i32 101, ; 65
	i32 34, ; 66
	i32 235, ; 67
	i32 292, ; 68
	i32 196, ; 69
	i32 178, ; 70
	i32 355, ; 71
	i32 118, ; 72
	i32 276, ; 73
	i32 329, ; 74
	i32 177, ; 75
	i32 347, ; 76
	i32 141, ; 77
	i32 140, ; 78
	i32 320, ; 79
	i32 52, ; 80
	i32 176, ; 81
	i32 34, ; 82
	i32 140, ; 83
	i32 202, ; 84
	i32 343, ; 85
	i32 243, ; 86
	i32 232, ; 87
	i32 242, ; 88
	i32 186, ; 89
	i32 260, ; 90
	i32 8, ; 91
	i32 14, ; 92
	i32 351, ; 93
	i32 289, ; 94
	i32 50, ; 95
	i32 271, ; 96
	i32 135, ; 97
	i32 100, ; 98
	i32 225, ; 99
	i32 330, ; 100
	i32 253, ; 101
	i32 299, ; 102
	i32 329, ; 103
	i32 115, ; 104
	i32 233, ; 105
	i32 162, ; 106
	i32 192, ; 107
	i32 165, ; 108
	i32 66, ; 109
	i32 182, ; 110
	i32 210, ; 111
	i32 79, ; 112
	i32 100, ; 113
	i32 294, ; 114
	i32 190, ; 115
	i32 364, ; 116
	i32 116, ; 117
	i32 307, ; 118
	i32 77, ; 119
	i32 305, ; 120
	i32 362, ; 121
	i32 113, ; 122
	i32 349, ; 123
	i32 120, ; 124
	i32 47, ; 125
	i32 215, ; 126
	i32 354, ; 127
	i32 127, ; 128
	i32 269, ; 129
	i32 236, ; 130
	i32 81, ; 131
	i32 109, ; 132
	i32 74, ; 133
	i32 201, ; 134
	i32 323, ; 135
	i32 212, ; 136
	i32 314, ; 137
	i32 198, ; 138
	i32 52, ; 139
	i32 296, ; 140
	i32 180, ; 141
	i32 68, ; 142
	i32 295, ; 143
	i32 82, ; 144
	i32 171, ; 145
	i32 115, ; 146
	i32 181, ; 147
	i32 155, ; 148
	i32 180, ; 149
	i32 230, ; 150
	i32 166, ; 151
	i32 288, ; 152
	i32 261, ; 153
	i32 184, ; 154
	i32 31, ; 155
	i32 196, ; 156
	i32 121, ; 157
	i32 71, ; 158
	i32 61, ; 159
	i32 160, ; 160
	i32 112, ; 161
	i32 87, ; 162
	i32 193, ; 163
	i32 104, ; 164
	i32 18, ; 165
	i32 145, ; 166
	i32 117, ; 167
	i32 57, ; 168
	i32 255, ; 169
	i32 203, ; 170
	i32 17, ; 171
	i32 51, ; 172
	i32 316, ; 173
	i32 91, ; 174
	i32 362, ; 175
	i32 357, ; 176
	i32 54, ; 177
	i32 361, ; 178
	i32 128, ; 179
	i32 151, ; 180
	i32 40, ; 181
	i32 210, ; 182
	i32 91, ; 183
	i32 209, ; 184
	i32 300, ; 185
	i32 204, ; 186
	i32 49, ; 187
	i32 327, ; 188
	i32 161, ; 189
	i32 245, ; 190
	i32 13, ; 191
	i32 273, ; 192
	i32 233, ; 193
	i32 295, ; 194
	i32 35, ; 195
	i32 66, ; 196
	i32 334, ; 197
	i32 108, ; 198
	i32 0, ; 199
	i32 234, ; 200
	i32 98, ; 201
	i32 98, ; 202
	i32 11, ; 203
	i32 11, ; 204
	i32 280, ; 205
	i32 25, ; 206
	i32 127, ; 207
	i32 228, ; 208
	i32 75, ; 209
	i32 272, ; 210
	i32 108, ; 211
	i32 207, ; 212
	i32 281, ; 213
	i32 299, ; 214
	i32 228, ; 215
	i32 297, ; 216
	i32 205, ; 217
	i32 105, ; 218
	i32 2, ; 219
	i32 26, ; 220
	i32 251, ; 221
	i32 156, ; 222
	i32 21, ; 223
	i32 48, ; 224
	i32 42, ; 225
	i32 125, ; 226
	i32 195, ; 227
	i32 237, ; 228
	i32 58, ; 229
	i32 118, ; 230
	i32 302, ; 231
	i32 226, ; 232
	i32 264, ; 233
	i32 250, ; 234
	i32 3, ; 235
	i32 270, ; 236
	i32 348, ; 237
	i32 291, ; 238
	i32 37, ; 239
	i32 123, ; 240
	i32 350, ; 241
	i32 291, ; 242
	i32 136, ; 243
	i32 148, ; 244
	i32 84, ; 245
	i32 89, ; 246
	i32 220, ; 247
	i32 274, ; 248
	i32 365, ; 249
	i32 271, ; 250
	i32 242, ; 251
	i32 257, ; 252
	i32 303, ; 253
	i32 187, ; 254
	i32 309, ; 255
	i32 272, ; 256
	i32 218, ; 257
	i32 132, ; 258
	i32 95, ; 259
	i32 205, ; 260
	i32 356, ; 261
	i32 3, ; 262
	i32 104, ; 263
	i32 349, ; 264
	i32 32, ; 265
	i32 153, ; 266
	i32 157, ; 267
	i32 154, ; 268
	i32 81, ; 269
	i32 326, ; 270
	i32 266, ; 271
	i32 172, ; 272
	i32 142, ; 273
	i32 86, ; 274
	i32 19, ; 275
	i32 267, ; 276
	i32 219, ; 277
	i32 50, ; 278
	i32 315, ; 279
	i32 232, ; 280
	i32 353, ; 281
	i32 60, ; 282
	i32 53, ; 283
	i32 4, ; 284
	i32 96, ; 285
	i32 231, ; 286
	i32 17, ; 287
	i32 341, ; 288
	i32 154, ; 289
	i32 83, ; 290
	i32 212, ; 291
	i32 215, ; 292
	i32 28, ; 293
	i32 44, ; 294
	i32 350, ; 295
	i32 63, ; 296
	i32 65, ; 297
	i32 172, ; 298
	i32 344, ; 299
	i32 171, ; 300
	i32 275, ; 301
	i32 1, ; 302
	i32 318, ; 303
	i32 306, ; 304
	i32 46, ; 305
	i32 24, ; 306
	i32 213, ; 307
	i32 239, ; 308
	i32 222, ; 309
	i32 164, ; 310
	i32 107, ; 311
	i32 221, ; 312
	i32 12, ; 313
	i32 269, ; 314
	i32 62, ; 315
	i32 211, ; 316
	i32 23, ; 317
	i32 92, ; 318
	i32 167, ; 319
	i32 12, ; 320
	i32 322, ; 321
	i32 199, ; 322
	i32 28, ; 323
	i32 102, ; 324
	i32 14, ; 325
	i32 246, ; 326
	i32 125, ; 327
	i32 252, ; 328
	i32 285, ; 329
	i32 90, ; 330
	i32 273, ; 331
	i32 332, ; 332
	i32 9, ; 333
	i32 355, ; 334
	i32 85, ; 335
	i32 352, ; 336
	i32 263, ; 337
	i32 174, ; 338
	i32 297, ; 339
	i32 348, ; 340
	i32 70, ; 341
	i32 167, ; 342
	i32 244, ; 343
	i32 1, ; 344
	i32 284, ; 345
	i32 5, ; 346
	i32 43, ; 347
	i32 223, ; 348
	i32 211, ; 349
	i32 319, ; 350
	i32 176, ; 351
	i32 336, ; 352
	i32 157, ; 353
	i32 287, ; 354
	i32 111, ; 355
	i32 208, ; 356
	i32 244, ; 357
	i32 120, ; 358
	i32 226, ; 359
	i32 209, ; 360
	i32 302, ; 361
	i32 238, ; 362
	i32 191, ; 363
	i32 158, ; 364
	i32 130, ; 365
	i32 308, ; 366
	i32 56, ; 367
	i32 137, ; 368
	i32 82, ; 369
	i32 29, ; 370
	i32 253, ; 371
	i32 10, ; 372
	i32 281, ; 373
	i32 217, ; 374
	i32 304, ; 375
	i32 170, ; 376
	i32 250, ; 377
	i32 149, ; 378
	i32 93, ; 379
	i32 313, ; 380
	i32 337, ; 381
	i32 263, ; 382
	i32 59, ; 383
	i32 217, ; 384
	i32 197, ; 385
	i32 156, ; 386
	i32 333, ; 387
	i32 203, ; 388
	i32 186, ; 389
	i32 63, ; 390
	i32 87, ; 391
	i32 214, ; 392
	i32 78, ; 393
	i32 46, ; 394
	i32 194, ; 395
	i32 216, ; 396
	i32 142, ; 397
	i32 320, ; 398
	i32 353, ; 399
	i32 257, ; 400
	i32 73, ; 401
	i32 90, ; 402
	i32 361, ; 403
	i32 317, ; 404
	i32 134, ; 405
	i32 89, ; 406
	i32 296, ; 407
	i32 323, ; 408
	i32 254, ; 409
	i32 207, ; 410
	i32 206, ; 411
	i32 111, ; 412
	i32 41, ; 413
	i32 158, ; 414
	i32 4, ; 415
	i32 102, ; 416
	i32 201, ; 417
	i32 69, ; 418
	i32 59, ; 419
	i32 38, ; 420
	i32 240, ; 421
	i32 174, ; 422
	i32 152, ; 423
	i32 55, ; 424
	i32 33, ; 425
	i32 360, ; 426
	i32 185, ; 427
	i32 197, ; 428
	i32 237, ; 429
	i32 21, ; 430
	i32 162, ; 431
	i32 309, ; 432
	i32 216, ; 433
	i32 357, ; 434
	i32 307, ; 435
	i32 359, ; 436
	i32 301, ; 437
	i32 139, ; 438
	i32 187, ; 439
	i32 88, ; 440
	i32 146, ; 441
	i32 256, ; 442
	i32 161, ; 443
	i32 177, ; 444
	i32 214, ; 445
	i32 286, ; 446
	i32 6, ; 447
	i32 168, ; 448
	i32 30, ; 449
	i32 106, ; 450
	i32 266, ; 451
	i32 189, ; 452
	i32 301, ; 453
	i32 184, ; 454
	i32 235, ; 455
	i32 294, ; 456
	i32 166, ; 457
	i32 267, ; 458
	i32 221, ; 459
	i32 139, ; 460
	i32 336, ; 461
	i32 58, ; 462
	i32 143, ; 463
	i32 339, ; 464
	i32 80, ; 465
	i32 73, ; 466
	i32 129, ; 467
	i32 25, ; 468
	i32 7, ; 469
	i32 92, ; 470
	i32 340, ; 471
	i32 298, ; 472
	i32 136, ; 473
	i32 229, ; 474
	i32 112, ; 475
	i32 9, ; 476
	i32 103, ; 477
	i32 175, ; 478
	i32 0, ; 479
	i32 19, ; 480
	i32 190, ; 481
	i32 265, ; 482
	i32 279, ; 483
	i32 365, ; 484
	i32 259, ; 485
	i32 32, ; 486
	i32 351, ; 487
	i32 247, ; 488
	i32 45, ; 489
	i32 341, ; 490
	i32 29, ; 491
	i32 248, ; 492
	i32 56, ; 493
	i32 133, ; 494
	i32 113, ; 495
	i32 303, ; 496
	i32 245, ; 497
	i32 354, ; 498
	i32 321, ; 499
	i32 54, ; 500
	i32 188, ; 501
	i32 6, ; 502
	i32 76, ; 503
	i32 173, ; 504
	i32 258, ; 505
	i32 110, ; 506
	i32 208, ; 507
	i32 262, ; 508
	i32 101, ; 509
	i32 328, ; 510
	i32 342, ; 511
	i32 328, ; 512
	i32 169, ; 513
	i32 114, ; 514
	i32 222, ; 515
	i32 298, ; 516
	i32 311, ; 517
	i32 252, ; 518
	i32 75, ; 519
	i32 312, ; 520
	i32 84, ; 521
	i32 318, ; 522
	i32 356, ; 523
	i32 241, ; 524
	i32 340, ; 525
	i32 288, ; 526
	i32 159, ; 527
	i32 2, ; 528
	i32 258, ; 529
	i32 24, ; 530
	i32 234, ; 531
	i32 31, ; 532
	i32 116, ; 533
	i32 36, ; 534
	i32 16, ; 535
	i32 335, ; 536
	i32 51, ; 537
	i32 338, ; 538
	i32 319, ; 539
	i32 310, ; 540
	i32 20, ; 541
	i32 122, ; 542
	i32 153, ; 543
	i32 265, ; 544
	i32 310, ; 545
	i32 223, ; 546
	i32 130, ; 547
	i32 330, ; 548
	i32 247, ; 549
	i32 147, ; 550
	i32 230, ; 551
	i32 119, ; 552
	i32 27, ; 553
	i32 131, ; 554
	i32 99, ; 555
	i32 133, ; 556
	i32 286, ; 557
	i32 152, ; 558
	i32 243, ; 559
	i32 96, ; 560
	i32 124, ; 561
	i32 231, ; 562
	i32 68, ; 563
	i32 71, ; 564
	i32 270, ; 565
	i32 289, ; 566
	i32 332, ; 567
	i32 135, ; 568
	i32 175, ; 569
	i32 123, ; 570
	i32 70, ; 571
	i32 110, ; 572
	i32 280, ; 573
	i32 182, ; 574
	i32 151, ; 575
	i32 312, ; 576
	i32 117, ; 577
	i32 256, ; 578
	i32 179, ; 579
	i32 360, ; 580
	i32 126, ; 581
	i32 132, ; 582
	i32 183, ; 583
	i32 76, ; 584
	i32 45, ; 585
	i32 259, ; 586
	i32 72, ; 587
	i32 62, ; 588
	i32 97, ; 589
	i32 83, ; 590
	i32 204, ; 591
	i32 42, ; 592
	i32 60, ; 593
	i32 189, ; 594
	i32 287, ; 595
	i32 181, ; 596
	i32 36, ; 597
	i32 39, ; 598
	i32 249, ; 599
	i32 331, ; 600
	i32 322, ; 601
	i32 159, ; 602
	i32 224, ; 603
	i32 97, ; 604
	i32 254, ; 605
	i32 183, ; 606
	i32 346, ; 607
	i32 338, ; 608
	i32 333, ; 609
	i32 134, ; 610
	i32 20, ; 611
	i32 64, ; 612
	i32 124, ; 613
	i32 74, ; 614
	i32 278, ; 615
	i32 163, ; 616
	i32 155, ; 617
	i32 331, ; 618
	i32 5, ; 619
	i32 339, ; 620
	i32 246, ; 621
	i32 48, ; 622
	i32 293, ; 623
	i32 143, ; 624
	i32 138, ; 625
	i32 99, ; 626
	i32 193, ; 627
	i32 316, ; 628
	i32 122, ; 629
	i32 119, ; 630
	i32 141, ; 631
	i32 38, ; 632
	i32 345, ; 633
	i32 67, ; 634
	i32 227, ; 635
	i32 40, ; 636
	i32 220, ; 637
	i32 163, ; 638
	i32 200, ; 639
	i32 344, ; 640
	i32 72, ; 641
	i32 324, ; 642
	i32 164, ; 643
	i32 185, ; 644
	i32 126, ; 645
	i32 264, ; 646
	i32 321, ; 647
	i32 67, ; 648
	i32 358, ; 649
	i32 168, ; 650
	i32 311, ; 651
	i32 277, ; 652
	i32 251, ; 653
	i32 178, ; 654
	i32 199, ; 655
	i32 285, ; 656
	i32 206, ; 657
	i32 150, ; 658
	i32 44, ; 659
	i32 342, ; 660
	i32 107, ; 661
	i32 47, ; 662
	i32 95, ; 663
	i32 30, ; 664
	i32 23, ; 665
	i32 165, ; 666
	i32 22, ; 667
	i32 325, ; 668
	i32 137, ; 669
	i32 77, ; 670
	i32 53, ; 671
	i32 277, ; 672
	i32 283, ; 673
	i32 10, ; 674
	i32 236, ; 675
	i32 363, ; 676
	i32 195, ; 677
	i32 282, ; 678
	i32 268, ; 679
	i32 324, ; 680
	i32 16, ; 681
	i32 359, ; 682
	i32 138, ; 683
	i32 192, ; 684
	i32 13, ; 685
	i32 15, ; 686
	i32 121, ; 687
	i32 86, ; 688
	i32 148, ; 689
	i32 22, ; 690
	i32 325, ; 691
	i32 33, ; 692
	i32 78, ; 693
	i32 308, ; 694
	i32 219, ; 695
	i32 352, ; 696
	i32 146, ; 697
	i32 227, ; 698
	i32 335, ; 699
	i32 79, ; 700
	i32 179, ; 701
	i32 229, ; 702
	i32 41, ; 703
	i32 26, ; 704
	i32 358, ; 705
	i32 279, ; 706
	i32 276, ; 707
	i32 106, ; 708
	i32 109, ; 709
	i32 191, ; 710
	i32 7, ; 711
	i32 317, ; 712
	i32 43, ; 713
	i32 315, ; 714
	i32 314, ; 715
	i32 160, ; 716
	i32 147, ; 717
	i32 225, ; 718
	i32 346, ; 719
	i32 241, ; 720
	i32 282, ; 721
	i32 37, ; 722
	i32 15, ; 723
	i32 145, ; 724
	i32 8, ; 725
	i32 262, ; 726
	i32 284, ; 727
	i32 129, ; 728
	i32 326, ; 729
	i32 300, ; 730
	i32 93 ; 731
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ cdb777a0c306e3e0668f847433f82144d7ca745f"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
