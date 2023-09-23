.class public Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;
.source "EncryptFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;,
        Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment<",
        "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_DELETE_AFTER_ENCRYPT:Ljava/lang/String; = "delete_after_encrypt"

.field public static final ARG_ENCRYPT_FILENAMES:Ljava/lang/String; = "encrypt_filenames"

.field public static final ARG_SELF_ENCRYPT:Ljava/lang/String; = "self_encrypt"

.field public static final ARG_URIS:Ljava/lang/String; = "uris"

.field public static final ARG_USE_ASCII_ARMOR:Ljava/lang/String; = "use_ascii_armor"

.field public static final ARG_USE_COMPRESSION:Ljava/lang/String; = "use_compression"

.field public static final REQUEST_CODE_INPUT:I = 0x7003

.field private static final REQUEST_CODE_OUTPUT:I = 0x7007

.field private static final REQUEST_PERMISSION_READ_EXTERNAL_STORAGE:I = 0xc


# instance fields
.field private mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

.field private mDeleteAfterEncrypt:Z

.field private mEncryptFilenames:Z

.field mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

.field private mHiddenRecipients:Z

.field private mOutputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingInputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

.field private mSelfEncrypt:Z

.field private mUseArmor:Z

.field private mUseCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 84
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mHiddenRecipients:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->addInputUri()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;
    .locals 0

    .line 84
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;)Landroid/content/Intent;
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->createSendIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private addInputUri()V
    .locals 6

    move-object/16 v3, p0

    const-string v0, "*/*"

    const/4 v1, 0x1

    const/16 v2, 0x7003

    .line 224
    invoke-static {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->addInputUri()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkAndRequestReadPermission(Landroid/net/Uri;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "file"

    .line 283
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x1

    if-nez v3, :cond_0

    return v0

    .line 288
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v3, v1, :cond_1

    return v0

    .line 292
    :cond_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 297
    :cond_2
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/16 v0, 0xc

    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->requestPermissions([Ljava/lang/String;I)V

    return v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->checkAndRequestReadPermission(Landroid/net/Uri;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createSendIntent()Landroid/content/Intent;
    .locals 10

    move-object/16 v7, p0

    .line 714
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    .line 716
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 718
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.STREAM"

    .line 719
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_0
    const-string v2, "application/pgp-message"

    .line 721
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;

    .line 724
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getModeFragment()Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;

    move-result-object v2

    .line 725
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->isAsymmetric()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    .line 729
    :cond_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getAsymmetricEncryptionUserIds()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 734
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 735
    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v2, v1

    .line 736
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v5

    .line 737
    iget-object v6, v5, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 738
    iget-object v5, v5, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.extra.EMAIL"

    .line 742
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->createSendIntent()Landroid/content/Intent;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 121
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;-><init>()V

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uris"

    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 125
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private prepareOutputStreams()Z
    .locals 9

    move-object/16 v6, p0

    .line 576
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$7;->$SwitchMap$org$sufficientlysecure$keychain$ui$EncryptFilesFragment$AfterEncryptAction:[I

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    .line 581
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->access$300(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 591
    :pswitch_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getModelCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 592
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110185

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return v2

    .line 595
    :cond_0
    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->showOutputFileDialog()V

    return v2

    .line 600
    :pswitch_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getModelCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 601
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110184

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return v2

    .line 604
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    if-eqz v3, :cond_2

    .line 606
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    .line 607
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getModelItem(I)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    move-result-object v3

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    .line 606
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".asc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-static {v3, v0, v4}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 581
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    if-eqz v5, :cond_3

    .line 583
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    invoke-static {v5, v3}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    if-eqz v3, :cond_4

    const-string v3, ".asc"

    goto :goto_3

    :cond_4
    const-string v3, ".pgp"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->prepareOutputStreams()Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processPendingInputUris()V
    .locals 10

    move-object/16 v7, p0

    .line 249
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 253
    invoke-direct {v7, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->checkAndRequestReadPermission(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 259
    :cond_0
    :try_start_0
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->add(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 261
    :catch_0
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 263
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f110176

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 262
    invoke-static {v2, v1, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    .line 264
    invoke-interface {v1, v7}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    .line 268
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 271
    :cond_1
    :goto_2
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->processPendingInputUris()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showOutputFileDialog()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/16 v3, p0

    .line 329
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getModelCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getModelItem(I)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    if-eqz v2, :cond_1

    const-string v0, "1"

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter$ViewModel;->inputUri:Landroid/net/Uri;

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    if-eqz v0, :cond_2

    const-string v0, ".asc"

    goto :goto_1

    :cond_2
    const-string v0, ".pgp"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7007

    .line 336
    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->showOutputFileDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addInputUri(Landroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 232
    :goto_0
    invoke-virtual {v4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 233
    invoke-virtual {v4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_3
    :goto_1
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->processPendingInputUris()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->addInputUri(Landroid/content/Intent;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected createIncompleteCryptoInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
    .locals 13

    move-object/16 v10, p0

    .line 653
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getModelCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110189

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 659
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v0

    .line 661
    iget-boolean v2, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseCompression:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 662
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setCompressionAlgorithm(I)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 664
    :cond_1
    iget-boolean v2, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mHiddenRecipients:Z

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setHiddenRecipients(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 665
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    sget-object v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->COPY:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    const/4 v5, 0x1

    if-eq v2, v4, :cond_3

    iget-boolean v2, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 667
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;

    .line 668
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getModeFragment()Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;

    move-result-object v2

    .line 670
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->isAsymmetric()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 671
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getAsymmetricEncryptionKeyIds()[J

    move-result-object v4

    .line 672
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getAsymmetricSigningKeyId()J

    move-result-wide v6

    if-eqz v4, :cond_4

    .line 674
    array-length v2, v4

    if-lez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    const-wide/16 v8, 0x0

    if-nez v3, :cond_5

    cmp-long v2, v6, v8

    if-eqz v2, :cond_5

    .line 677
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110171

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    :cond_5
    if-nez v3, :cond_6

    .line 681
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110c98

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 685
    :cond_6
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEncryptionMasterKeyIds([J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 686
    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSignatureMasterKeyId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    cmp-long v1, v6, v8

    if-eqz v1, :cond_a

    .line 687
    iget-boolean v1, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelfEncrypt:Z

    if-eqz v1, :cond_a

    .line 688
    invoke-virtual {v0, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setAdditionalEncryptId(J)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    goto :goto_2

    .line 691
    :cond_7
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2

    if-nez v2, :cond_8

    .line 693
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110bd8

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 694
    invoke-interface {v0, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 697
    :cond_8
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 698
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f110bd4

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 699
    invoke-interface {v0, v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-object v1

    .line 702
    :cond_9
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 706
    :cond_a
    :goto_2
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->builder(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    move-result-object v0

    .line 707
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getAsArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->addInputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    .line 708
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v0

    return-object v0

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->createIncompleteCryptoInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
    .locals 6

    move-object/16 v3, p0

    .line 615
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getCachedActionsParcel()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 620
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    .line 622
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->createIncompleteCryptoInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 628
    :cond_0
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->cacheActionsParcel(Landroid/os/Parcelable;)V

    .line 632
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->isIncomplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 634
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 636
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->prepareOutputStreams()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 641
    :cond_2
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->builder(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    .line 642
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->addOutputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    move-result-object v0

    .line 644
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->cacheActionsParcel(Landroid/os/Parcelable;)V

    :cond_3
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    const/16 v0, 0x7003

    const/4 v1, -0x1

    if-eq v3, v0, :cond_3

    const/16 v0, 0x7007

    if-eq v3, v0, :cond_0

    .line 771
    invoke-super {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-ne v4, v1, :cond_1

    if-eqz p0, :cond_1

    .line 759
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    .line 760
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SAVE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    .line 763
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 765
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->onCryptoOperationCancelled()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne v4, v1, :cond_4

    if-eqz p0, :cond_4

    .line 752
    invoke-virtual {v2, p0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->addInputUri(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 132
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onAttach(Landroid/content/Context;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " must inherit from EncryptionActivity"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 189
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    if-nez v5, :cond_0

    .line 193
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    :cond_0
    const-string v1, "delete_after_encrypt"

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mDeleteAfterEncrypt:Z

    const-string v1, "use_ascii_armor"

    .line 196
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "use_ascii_armor"

    .line 197
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getUseArmor()Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    :goto_0
    const-string v1, "use_compression"

    .line 202
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const-string v1, "use_compression"

    .line 203
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseCompression:Z

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getFilesUseCompression()Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseCompression:Z

    :goto_1
    const-string v1, "self_encrypt"

    .line 208
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "self_encrypt"

    .line 209
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelfEncrypt:Z

    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getFilesEncryptToSelf()Z

    move-result v1

    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelfEncrypt:Z

    :goto_2
    const-string v1, "encrypt_filenames"

    .line 214
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "encrypt_filenames"

    .line 215
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    goto :goto_3

    .line 217
    :cond_4
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getEncryptFilenames()Z

    move-result v5

    iput-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    .line 220
    :goto_3
    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 341
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d0008

    .line 342
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v3, 0x7f0900d6

    .line 344
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mDeleteAfterEncrypt:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v3, 0x7f0900da

    .line 345
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v3, 0x7f0900d7

    .line 346
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseCompression:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v3, 0x7f0900d8

    .line 347
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelfEncrypt:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v3, 0x7f0900d9

    .line 348
    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    const v0, 0x7f0c0071

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v4, v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0902c7

    .line 145
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    .line 147
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;

    .line 148
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;-><init>(I)V

    .line 147
    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 149
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 150
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 151
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 153
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;)V

    invoke-direct {v5, v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    .line 159
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelectedFiles:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    if-nez p0, :cond_0

    .line 161
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    .line 163
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mPendingInputUris:Ljava/util/ArrayList;

    const-string v5, "uris"

    .line 165
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 167
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->processPendingInputUris()V

    :cond_1
    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 353
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09014e

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 399
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 361
    :pswitch_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->hideKeyboard()V

    .line 362
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SHARE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    .line 363
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->hideKeyboard()V

    .line 356
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SAVE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    .line 357
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    .line 373
    :pswitch_2
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->toggleUseArmor(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 390
    :pswitch_3
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->toggleEncryptFilenamesCheck(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 386
    :pswitch_4
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->toggleEnableSelfEncrypt(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 382
    :pswitch_5
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->toggleEnableCompression(Landroid/view/MenuItem;Z)V

    goto :goto_0

    .line 377
    :pswitch_6
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 378
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    iput-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mDeleteAfterEncrypt:Z

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->hideKeyboard()V

    .line 368
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->COPY:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    .line 369
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x7f0900d6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090153
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 407
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onPrepareOptionsMenu(Landroid/view/Menu;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const v0, 0x7f090153

    .line 411
    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v0, 0x0

    .line 412
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public bridge synthetic onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 84
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V

    return-void
.end method

.method public onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 506
    invoke-super {v8, v9}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->hideKeyboard()V

    .line 511
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 513
    iget-boolean v1, v8, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mDeleteAfterEncrypt:Z

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    .line 516
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getAsArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;

    move-result-object v1

    .line 517
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;

    invoke-direct {v2, v8, v9}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->setOnDeletedListener(Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;)V

    .line 536
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const-string v0, "deleteDialog"

    invoke-virtual {v1, v9, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$7;->$SwitchMap$org$sufficientlysecure$keychain$ui$EncryptFilesFragment$AfterEncryptAction:[I

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mAfterEncryptAction:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 564
    :pswitch_0
    invoke-virtual {v9, v0}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    :pswitch_1
    const-string v1, "clipboard"

    .line 548
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    const v9, 0x7f11016c

    .line 550
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v9, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 553
    :cond_1
    new-instance v2, Landroid/content/ClipData;

    const v3, 0x7f11088c

    invoke-virtual {v8, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "text/plain"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Landroid/content/ClipData$Item;

    iget-object v7, v8, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mOutputUris:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 558
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 559
    invoke-virtual {v9, v0}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v9

    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 543
    :pswitch_2
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->createSendIntent()Landroid/content/Intent;

    move-result-object v9

    const v0, 0x7f110cf7

    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0xc

    if-eq v2, v0, :cond_0

    .line 310
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 314
    :cond_0
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-lez v2, :cond_1

    aget v2, p0, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 319
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->processPendingInputUris()V

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const p0, 0x7f110170

    invoke-static {v2, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 322
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 323
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 176
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "delete_after_encrypt"

    .line 178
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mDeleteAfterEncrypt:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "use_ascii_armor"

    .line 179
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "use_compression"

    .line 180
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseCompression:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "self_encrypt"

    .line 181
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelfEncrypt:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "encrypt_filenames"

    .line 182
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "uris"

    .line 184
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mFilesAdapter:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$FilesAdapter;->getAsArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public toggleEnableCompression(Landroid/view/MenuItem;Z)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 462
    iput-boolean v8, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseCompression:Z

    .line 463
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 465
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v8, :cond_0

    const v7, 0x7f110caf

    const v1, 0x7f110caf

    goto :goto_0

    :cond_0
    const v7, 0x7f110cae

    const v1, 0x7f110cae

    :goto_0
    const/16 v2, 0xdac

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$4;

    invoke-direct {v4, v6, v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Z)V

    const v5, 0x7f11007d

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 478
    invoke-interface {v7, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->toggleEnableCompression(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toggleEnableSelfEncrypt(Landroid/view/MenuItem;Z)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 440
    iput-boolean v8, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mSelfEncrypt:Z

    .line 441
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 443
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v8, :cond_0

    const v7, 0x7f110cbb

    const v1, 0x7f110cbb

    goto :goto_0

    :cond_0
    const v7, 0x7f110cba

    const v1, 0x7f110cba

    :goto_0
    const/16 v2, 0xdac

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$3;

    invoke-direct {v4, v6, v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Z)V

    const v5, 0x7f11007d

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 456
    invoke-interface {v7, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->toggleEnableSelfEncrypt(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toggleEncryptFilenamesCheck(Landroid/view/MenuItem;Z)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 484
    iput-boolean v8, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mEncryptFilenames:Z

    .line 485
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 487
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v8, :cond_0

    const v7, 0x7f110cb1

    const v1, 0x7f110cb1

    goto :goto_0

    :cond_0
    const v7, 0x7f110cb0

    const v1, 0x7f110cb0

    :goto_0
    const/16 v2, 0xdac

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$5;

    invoke-direct {v4, v6, v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Z)V

    const v5, 0x7f11007d

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 500
    invoke-interface {v7, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->toggleEncryptFilenamesCheck(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toggleUseArmor(Landroid/view/MenuItem;Z)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move/16 v8, p2

    .line 418
    iput-boolean v8, v6, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->mUseArmor:Z

    .line 419
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 421
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v8, :cond_0

    const v7, 0x7f110ca8

    const v1, 0x7f110ca8

    goto :goto_0

    :cond_0
    const v7, 0x7f110ca7

    const v1, 0x7f110ca7

    :goto_0
    const/16 v2, 0xdac

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$2;

    invoke-direct {v4, v6, v8}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Z)V

    const v5, 0x7f11007d

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    .line 434
    invoke-interface {v7, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;--->toggleUseArmor(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
