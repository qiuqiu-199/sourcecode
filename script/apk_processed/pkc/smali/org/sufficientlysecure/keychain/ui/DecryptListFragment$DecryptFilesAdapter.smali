.class public Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DecryptListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecryptFilesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuClickedModel:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 909
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;
    .locals 0

    .line 836
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mMenuClickedModel:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    return-object p0
.end method

.method private bindItemCancelled(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 949
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 951
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vCancelledRetry:Landroid/widget/ImageView;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mCancelled:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->bindItemCancelled(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private bindItemFailure(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 1057
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1059
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vErrorMsg:Landroid/widget/TextView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v1

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1061
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vErrorViewLog:Landroid/widget/ImageView;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$5;

    invoke-direct {v0, v2, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->bindItemFailure(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private bindItemProgress(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 955
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 957
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vProgress:Landroid/widget/ProgressBar;

    iget v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 958
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vProgress:Landroid/widget/ProgressBar;

    iget v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 959
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProgressMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 960
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vProgressMsg:Landroid/widget/TextView;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProgressMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->bindItemProgress(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private bindItemSuccess(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    move-object/16 v14, p2

    .line 965
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vAnimator:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 967
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    iget-boolean v2, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProcessingKeyLookup:Z

    invoke-static {v0, v13, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatus(Landroid/content/res/Resources;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Z)V

    .line 970
    iget-object v0, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getOutputUris()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 971
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->resizeFileList(ILandroid/view/LayoutInflater;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 974
    iget-object v3, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getOutputUris()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 975
    iget-object v4, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 976
    iget-object v5, v13, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mFileHolderList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;

    const v6, 0x7f11041c

    if-nez v4, :cond_0

    .line 980
    iget-object v7, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v7, v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 981
    :cond_0
    invoke-virtual {v4}, Lorg/openintents/openpgp/OpenPgpMetadata;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 982
    invoke-virtual {v4}, Lorg/openintents/openpgp/OpenPgpMetadata;->getFilename()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 983
    :cond_1
    invoke-virtual {v4}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/pgp-keys"

    invoke-static {v7, v8}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 984
    iget-object v6, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    const v7, 0x7f11041b

    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 985
    :cond_2
    invoke-virtual {v4}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    invoke-static {v7, v8}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 986
    iget-object v6, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    const v7, 0x7f11041d

    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 988
    :cond_3
    iget-object v7, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v7, v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 990
    :goto_1
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFilename:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x0

    if-nez v4, :cond_4

    move-wide v8, v6

    goto :goto_2

    .line 992
    :cond_4
    invoke-virtual {v4}, Lorg/openintents/openpgp/OpenPgpMetadata;->getOriginalSize()J

    move-result-wide v8

    :goto_2
    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-eqz v4, :cond_6

    cmp-long v4, v8, v6

    if-nez v4, :cond_5

    goto :goto_3

    .line 996
    :cond_5
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFilesize:Landroid/widget/TextView;

    invoke-static {v8, v9}, Lorg/sufficientlysecure/keychain/util/FileHelper;->readableFileSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 994
    :cond_6
    :goto_3
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFilesize:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    :goto_4
    iget-object v4, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1000
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vThumbnail:Landroid/widget/ImageView;

    iget-object v6, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1002
    :cond_7
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vThumbnail:Landroid/widget/ImageView;

    const v4, 0x7f0800ac

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1008
    :goto_5
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vOverflowMenu:Landroid/widget/ImageView;

    iget-object v4, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->success()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1009
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vOverflowMenu:Landroid/widget/ImageView;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$0;

    invoke-direct {v4, v12, v14, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;->vFile:Landroid/view/View;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$1;

    invoke-direct {v4, v12, v14, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1023
    :cond_9
    iget-object v0, v14, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1025
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v1

    .line 1026
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    .line 1027
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureLayout:Landroid/view/View;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$2;

    invoke-direct {v3, v12, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;J)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 1036
    :cond_a
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureLayout:Landroid/view/View;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;

    invoke-direct {v3, v12, v14, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;J)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    :cond_b
    :goto_7
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vContextMenu:Landroid/view/View;

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1041
    iget-object v13, v13, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vContextMenu:Landroid/view/View;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;

    invoke-direct {v0, v12, v14}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->bindItemSuccess(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Landroid/net/Uri;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 1091
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1092
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->notifyItemInserted(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->add(Landroid/net/Uri;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addResult(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 1122
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1123
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1124
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    .line 1125
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setResult(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V

    .line 1126
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->notifyItemChanged(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->addResult(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 1076
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getItemResult(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 1080
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1081
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 1085
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    .line 1087
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->getItemResult(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$bindItemFailure$6$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;Landroid/view/View;)V
    .locals 2

    .line 1062
    iget-object p2, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1066
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "log"

    .line 1067
    iget-object p1, p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1068
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final synthetic lambda$bindItemSuccess$0$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;ILandroid/view/View;)V
    .locals 0

    .line 1010
    iget-object p3, p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {p3}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->success()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1011
    iget-object p3, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object p1, p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {p3, p1, p2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->displayBottomSheet(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$bindItemSuccess$1$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;ILandroid/view/View;)V
    .locals 1

    .line 1016
    iget-object p3, p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {p3}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->success()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1017
    iget-object p3, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object p1, p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->displayWithViewIntent(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;IZZ)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$bindItemSuccess$2$DecryptListFragment$DecryptFilesAdapter(JLandroid/view/View;)V
    .locals 1

    .line 1028
    iget-object p3, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {p3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p1

    .line 1033
    invoke-virtual {p3, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final synthetic lambda$bindItemSuccess$3$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;JLandroid/view/View;)V
    .locals 0

    .line 1036
    iget-object p4, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    iget-object p1, p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    invoke-static {p4, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Landroid/net/Uri;J)V

    return-void
.end method

.method final synthetic lambda$bindItemSuccess$5$DecryptListFragment$DecryptFilesAdapter(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;Landroid/view/View;)V
    .locals 1

    .line 1042
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1046
    :cond_0
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mMenuClickedModel:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    .line 1047
    new-instance p1, Landroid/widget/PopupMenu;

    invoke-direct {p1, v0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p2, 0x7f0d0005

    .line 1048
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1049
    iget-object p2, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1050
    new-instance p2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$7;

    invoke-direct {p2, p0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1051
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const v0, 0x7f090111

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1052
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method final synthetic lambda$null$4$DecryptListFragment$DecryptFilesAdapter(Landroid/widget/PopupMenu;)V
    .locals 0

    const/4 p1, 0x0

    .line 1050
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mMenuClickedModel:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    return-void
.end method

.method final synthetic lambda$setCancelled$7$DecryptListFragment$DecryptFilesAdapter(Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 1107
    iget-object p2, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-virtual {p2, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->retryUri(Landroid/net/Uri;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 836
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 928
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    .line 930
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mCancelled:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 931
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->bindItemCancelled(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V

    return-void

    .line 935
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->hasResult()Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->bindItemProgress(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V

    return-void

    .line 940
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->success()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 941
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->bindItemSuccess(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V

    goto :goto_0

    .line 943
    :cond_2
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->bindItemFailure(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 836
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 918
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v0, 0x7f0c004e

    const/4 v1, 0x0

    .line 919
    invoke-virtual {v4, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 920
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method resetItemData(Landroid/net/Uri;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 1130
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1131
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1132
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    const/4 v1, 0x0

    .line 1133
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setResult(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V

    .line 1134
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setCancelled(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 1135
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setProcessingKeyLookup(Z)V

    .line 1136
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->notifyItemChanged(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->resetItemData(Landroid/net/Uri;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setCancelled(Landroid/net/Uri;Z)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 1104
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1105
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v4, :cond_0

    .line 1107
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$6;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setCancelled(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1109
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setCancelled(Landroid/view/View$OnClickListener;)V

    .line 1111
    :goto_0
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->notifyItemChanged(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->setCancelled(Landroid/net/Uri;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProcessingKeyLookup(Landroid/net/Uri;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 1115
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1116
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1117
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setProcessingKeyLookup(Z)V

    .line 1118
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->notifyItemChanged(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->setProcessingKeyLookup(Landroid/net/Uri;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Landroid/net/Uri;IILjava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 1097
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V

    .line 1098
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1099
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    invoke-virtual {v0, v3, p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->setProgress(IILjava/lang/String;)V

    .line 1100
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->notifyItemChanged(I)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;--->setProgress(Landroid/net/Uri;IILjava/lang/String;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
