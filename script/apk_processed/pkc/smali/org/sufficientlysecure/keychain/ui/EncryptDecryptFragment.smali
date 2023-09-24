.class public Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;
.super Landroid/support/v4/app/Fragment;
.source "EncryptDecryptFragment.java"


# static fields
.field private static final REQUEST_CODE_INPUT:I = 0x7003


# instance fields
.field mClipboardIcon:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 43
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->decryptFromClipboard()V

    return-void
.end method

.method private checkClipboardForEncryptedText()V
    .locals 5

    move-object/16 v2, p0

    .line 124
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;->getClipboardText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 154
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;--->checkClipboardForEncryptedText()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private decryptFromClipboard()V
    .locals 6

    move-object/16 v3, p0

    .line 100
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;->getClipboardText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f11016d

    .line 107
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 111
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "DECRYPT_DATA_CLIPBOARD"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;--->decryptFromClipboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 51
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x7003

    if-eq v2, v0, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    if-eqz p0, :cond_2

    .line 164
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 166
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f110ba6

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 170
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    const-class v0, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.VIEW"

    .line 171
    invoke-virtual {v3, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    const p0, 0x7f0c006f

    const/4 v0, 0x0

    .line 57
    invoke-virtual {v4, p0, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090150

    .line 59
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const p0, 0x7f090155

    .line 60
    invoke-virtual {v4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f090114

    .line 61
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090119

    .line 62
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900e2

    .line 63
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v3, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->mClipboardIcon:Landroid/view/View;

    .line 65
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$2;

    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;

    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$4;

    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onResume()V
    .locals 3

    move-object/16 v0, p0

    .line 118
    invoke-super {v0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;--->onResume()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;->checkClipboardForEncryptedText()V

    return-void
.end method
