.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;
.super Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;
.source "LinkedIdCreateHttpsStep2Fragment.java"


# static fields
.field public static final ARG_URI:Ljava/lang/String; = "uri"

.field private static final REQUEST_CODE_OUTPUT:I = 0x7007


# instance fields
.field mEditUri:Landroid/widget/EditText;

.field mResourceUri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getResourceString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 101
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->fingerprint:[B

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->generateText(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->getResourceString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;
    .locals 6

    move-object/16 v3, p0

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uri"

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private proofSave()V
    .locals 6

    move-object/16 v3, p0

    .line 113
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "External storage not available!"

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_0
    const-string v0, "pgpkey.txt"

    const-string v1, "text/plain"

    const/16 v2, 0x7007

    .line 122
    invoke-static {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/FileHelper;->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->proofSave()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private proofSend()V
    .locals 6

    move-object/16 v3, p0

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 107
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getResourceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->proofSend()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveFile(Landroid/net/Uri;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 127
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 128
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getResourceString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v0, "Error writing file!"

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v0, "File could not be opened for writing!"

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_0
    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->saveFile(Landroid/net/Uri;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method bridge synthetic getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;

    move-result-object p1

    return-object p1
.end method

.method getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 66
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->mResourceUri:Ljava/net/URI;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;->createNew(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->getResource(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/resources/GenericHttpsResource;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreateView$0$LinkedIdCreateHttpsStep2Fragment(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->proofSend()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$LinkedIdCreateHttpsStep2Fragment(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->proofSave()V

    return-void
.end method

.method protected newView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c009d

    const/4 v0, 0x0

    .line 83
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->newView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x7007

    if-eq v2, v0, :cond_0

    .line 149
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 146
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->saveFile(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 71
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->mResourceUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 76
    invoke-static {v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 89
    invoke-super {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateFinalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f09009d

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment$$Lambda$0;

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090099

    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment$$Lambda$1;

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901cf

    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev2Fragment;->mEditUri:Landroid/widget/EditText;

    .line 95
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev2Fragment;->mEditUri:Landroid/widget/EditText;

    iget-object p0, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->mResourceUri:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method
