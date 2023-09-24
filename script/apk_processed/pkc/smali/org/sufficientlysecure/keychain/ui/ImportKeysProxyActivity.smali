.class public Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ImportKeysProxyActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_QR_CODE_API:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_QR_CODE"

.field public static final ACTION_SCAN_IMPORT:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_IMPORT"

.field public static final ACTION_SCAN_WITH_RESULT:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_WITH_RESULT"

.field public static final EXTRA_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final VCARD_KEY_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\nKEY:(.*)\n"

    .line 139
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->VCARD_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processScannedContent(Landroid/net/Uri;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 154
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    .line 159
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPGPSKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "init_frag"

    const/4 v2, 0x5

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "openpgp_skt_info"

    .line 162
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    .line 163
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v5, :cond_4

    .line 170
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openpgp4fpr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "[a-fA-F0-9]{40}"

    .line 181
    invoke-virtual {v5, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 182
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;

    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_WRONG_QR_CODE_FP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-direct {v5, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "operation_result"

    .line 185
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->returnResult(Landroid/content/Intent;)V

    return-void

    .line 189
    :cond_2
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintHexFingerprint(Ljava/lang/String;)[B

    move-result-object v5

    const-string v1, "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_WITH_RESULT"

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "fingerprint"

    .line 193
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v5, -0x1

    .line 194
    invoke-virtual {v4, v5, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->importKeysFromFingerprint([B)V

    :goto_0
    return-void

    .line 172
    :cond_4
    :goto_1
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;

    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_WRONG_QR_CODE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-direct {v5, v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/SingletonResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)V

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "operation_result"

    .line 175
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->returnResult(Landroid/content/Intent;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->processScannedContent(Landroid/net/Uri;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processScannedContent(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "BEGIN:VCARD"

    .line 143
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->VCARD_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 146
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    :cond_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 150
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->processScannedContent(Landroid/net/Uri;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->processScannedContent(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startImportService(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 236
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 238
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mKeyList:Ljava/util/ArrayList;

    .line 240
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v0, 0x7f110c10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v3, v1, v2, v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 242
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->startImportService(Ljava/util/ArrayList;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 5

    move-object/16 v2, p0

    .line 250
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mKeyList:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method handleActionNdefDiscovered(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    .line 286
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    const/4 v0, 0x0

    .line 288
    aget-object v2, v2, v0

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 290
    invoke-virtual {v2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->importKeys([B)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->handleActionNdefDiscovered(Landroid/content/Intent;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected handleActions(Landroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 83
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 85
    invoke-virtual {v4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 87
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "openpgp4fpr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->processScannedContent(Landroid/net/Uri;)V

    goto :goto_1

    :cond_0
    const-string v4, "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_WITH_RESULT"

    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_IMPORT"

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_QR_CODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "android.nfc.action.NDEF_DISCOVERED"

    .line 94
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v0, 0x0

    if-eqz v4, :cond_3

    .line 96
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v4, v1, :cond_2

    .line 97
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->handleActionNdefDiscovered(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string v4, "Android Beam not supported by Android < 4.1"

    .line 99
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    goto :goto_1

    :cond_3
    const-string v4, "No valid scheme or action given!"

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    new-instance v4, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v4, v3}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    const-class v0, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;

    invoke-virtual {v4, v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->setCaptureActivity(Ljava/lang/Class;)Lcom/google/zxing/integration/android/IntentIntegrator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    :goto_1
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->handleActions(Landroid/content/Intent;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public importKeys([B)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 218
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v2

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->startImportService(Ljava/util/ArrayList;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->importKeys([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public importKeysFromFingerprint([B)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 226
    invoke-static {v2, v0, v0, v0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v2

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->startImportService(Ljava/util/ArrayList;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->importKeysFromFingerprint([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 110
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->mImportOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "operation_result"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v1, p0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->returnResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    :cond_1
    :goto_0
    const v0, 0xc0de

    if-ne v2, v0, :cond_4

    .line 124
    invoke-static {v2, v3, p0}, Lorg/sufficientlysecure/keychain/util/IntentIntegratorSupportV4;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 127
    invoke-virtual {v2}, Lcom/google/zxing/integration/android/IntentResult;->getFormatName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->processScannedContent(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v2, "scanResult or formatName null! Should not happen!"

    const/4 v3, 0x0

    .line 128
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    return-void

    :cond_4
    :goto_2
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 75
    invoke-super {v0, v1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->handleActions(Landroid/content/Intent;)V

    return-void
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation_result"

    .line 270
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 272
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 273
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->returnResult(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 58
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "operation_result"

    .line 256
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_key_ids"

    .line 258
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getImportedMasterKeyIds()[J

    move-result-object v3

    .line 257
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 58
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public returnResult(Landroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 203
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_QR_CODE"

    .line 205
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "operation_result"

    .line 207
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 208
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v3

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 209
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 212
    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->setResult(ILandroid/content/Intent;)V

    .line 213
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;->finish()V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;--->returnResult(Landroid/content/Intent;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
