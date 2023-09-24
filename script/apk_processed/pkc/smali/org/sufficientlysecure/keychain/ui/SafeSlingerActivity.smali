.class public Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "SafeSlingerActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"

.field private static final REQUEST_CODE_SAFE_SLINGER:I = 0xd3


# instance fields
.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

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

.field private mMasterKeyId:J

.field private mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedNumber:I


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 54
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 62
    iput v0, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mSelectedNumber:I

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mSelectedNumber:I

    return p0
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;I)I
    .locals 0

    .line 54
    iput p1, p0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mSelectedNumber:I

    return p1
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mMasterKeyId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;JI)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->startExchange(JI)V

    return-void
.end method

.method private static getSlingedKeys(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemberData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-nez v2, :cond_0

    :cond_2
    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->getSlingedKeys(Landroid/os/Bundle;)Ljava/util/ArrayList;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startExchange(JI)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move/16 p0, p3

    .line 108
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadPublicKeyRingData(J)[B

    move-result-object v2

    .line 110
    new-instance v3, Landroid/content/Intent;

    const-class v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;

    invoke-direct {v3, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "NumUsers"

    .line 112
    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "UserData"

    .line 113
    invoke-virtual {v3, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v2, "HostName"

    const-string p0, "slinger-openpgp.appspot.com"

    .line 114
    invoke-virtual {v3, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xd3

    .line 115
    invoke-virtual {v1, v3, v2}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "key for transfer not found"

    const/4 p0, 0x0

    .line 117
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v2, v3, p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->startExchange(JI)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 5

    move-object/16 v2, p0

    .line 187
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mKeyList:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c00de

    .line 103
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 124
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    const/16 v0, 0xd3

    if-ne v2, v0, :cond_2

    const/16 v2, 0x12d

    if-ne v3, v2, :cond_1

    return-void

    :cond_1
    const-string v2, "importKeys started"

    const/4 v3, 0x0

    .line 133
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->getSlingedKeys(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    new-instance p0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;

    const-string v0, "key_import.pcl"

    invoke-direct {p0, v1, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->writeCache(ILjava/util/Iterator;)V

    .line 148
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 p0, 0x1

    const v0, 0x7f110c10

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p0, v1, v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v2, 0x0

    .line 151
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mKeyList:Ljava/util/ArrayList;

    .line 152
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 153
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string p0, "Problem writing cache file"

    .line 155
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "Problem writing cache file!"

    .line 156
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v1, v3, p0}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->finish()V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 73
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 76
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v0, "master_key_id"

    const-wide/16 v1, 0x0

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v3, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mMasterKeyId:J

    const v4, 0x7f090293

    .line 78
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    const/4 v0, 0x2

    .line 79
    invoke-virtual {v4, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v0, 0xa

    .line 80
    invoke-virtual {v4, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 81
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v4, 0x7f090292

    .line 88
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f040088

    .line 89
    invoke-static {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v4, 0x7f090291

    .line 92
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 93
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation_result"

    .line 207
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 208
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 209
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 210
    invoke-virtual {v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "operation_result"

    .line 193
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_key_ids"

    .line 194
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getImportedMasterKeyIds()[J

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v4, "certify_key_id"

    .line 195
    iget-wide v1, v3, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->mMasterKeyId:J

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 196
    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 53
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
