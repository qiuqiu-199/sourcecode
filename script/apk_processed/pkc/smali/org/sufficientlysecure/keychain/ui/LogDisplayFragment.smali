.class public Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.source "LogDisplayFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;",
        ">;",
        "Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;"
    }
.end annotation


# static fields
.field public static final EXTRA_RESULT:Ljava/lang/String; = "log"


# instance fields
.field private mLogTempFile:Landroid/net/Uri;

.field private mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private shareLog()V
    .locals 8

    move-object/16 v5, p0

    .line 112
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v1

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getPrintableOperationLog(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 120
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mLogTempFile:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 121
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "openkeychain_log.txt"

    const-string v4, "text/plain"

    invoke-static {v2, v3, v4}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mLogTempFile:Landroid/net/Uri;

    .line 123
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mLogTempFile:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v1, 0x7f110182

    .line 126
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 132
    :cond_1
    :goto_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mLogTempFile:Landroid/net/Uri;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->newInstance(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;

    move-result-object v0

    .line 133
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "shareLogDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->shareLog()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 59
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    if-eqz v3, :cond_1

    const-string v0, "log"

    .line 68
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    goto :goto_0

    :cond_1
    const-string v3, "log"

    .line 70
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 73
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    .line 78
    :cond_2
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 79
    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter;->setListener(Lorg/sufficientlysecure/keychain/ui/adapter/NestedLogAdapter$LogActionListener;)V

    .line 80
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 53
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d0013

    .line 95
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 97
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 102
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09023d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->shareLog()V

    .line 108
    :goto_0
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 87
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "log"

    .line 90
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->mResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSubEntryClicked(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "log"

    .line 139
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->getSubResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayFragment;--->onSubEntryClicked(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
