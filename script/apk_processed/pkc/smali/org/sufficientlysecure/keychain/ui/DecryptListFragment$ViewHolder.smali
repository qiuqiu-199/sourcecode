.class public Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DecryptListFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;
    }
.end annotation


# instance fields
.field private mCurrentFileListSize:I

.field public mFileHolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public vAnimator:Landroid/widget/ViewAnimator;

.field public vCancelledRetry:Landroid/widget/ImageView;

.field public vContextMenu:Landroid/view/View;

.field public vEncStatusIcon:Landroid/widget/ImageView;

.field public vEncStatusText:Landroid/widget/TextView;

.field public vErrorMsg:Landroid/widget/TextView;

.field public vErrorViewLog:Landroid/widget/ImageView;

.field public vFileList:Landroid/widget/LinearLayout;

.field public vProgress:Landroid/widget/ProgressBar;

.field public vProgressMsg:Landroid/widget/TextView;

.field public vSigStatusIcon:Landroid/widget/ImageView;

.field public vSigStatusText:Landroid/widget/TextView;

.field public vSignatureAction:Landroid/widget/ViewAnimator;

.field public vSignatureLayout:Landroid/view/View;

.field public vSignatureMail:Landroid/widget/TextView;

.field public vSignatureName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 1189
    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mFileHolderList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1186
    iput v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    const v1, 0x7f090365

    .line 1191
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vAnimator:Landroid/widget/ViewAnimator;

    const v1, 0x7f090271

    .line 1193
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f090274

    .line 1194
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vProgressMsg:Landroid/widget/TextView;

    const v1, 0x7f090282

    .line 1196
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vEncStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f090283

    .line 1197
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vEncStatusText:Landroid/widget/TextView;

    const v1, 0x7f090289

    .line 1199
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSigStatusIcon:Landroid/widget/ImageView;

    const v1, 0x7f09028c

    .line 1200
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSigStatusText:Landroid/widget/TextView;

    const v1, 0x7f09028a

    .line 1201
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureLayout:Landroid/view/View;

    const v1, 0x7f09028b

    .line 1202
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureName:Landroid/widget/TextView;

    const v1, 0x7f090288

    .line 1203
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureMail:Landroid/widget/TextView;

    const v1, 0x7f090287

    .line 1204
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewAnimator;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureAction:Landroid/widget/ViewAnimator;

    const v1, 0x7f09016e

    .line 1206
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    .line 1207
    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1208
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mFileHolderList:Ljava/util/ArrayList;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    iget v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0900f0

    .line 1212
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vContextMenu:Landroid/view/View;

    const v0, 0x7f090285

    .line 1214
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vErrorMsg:Landroid/widget/TextView;

    const v0, 0x7f090284

    .line 1215
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vErrorViewLog:Landroid/widget/ImageView;

    const v0, 0x7f0900ac

    .line 1217
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vCancelledRetry:Landroid/widget/ImageView;

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;---><init>(Landroid/view/View;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getEncryptionStatusIcon()Landroid/widget/ImageView;
    .locals 4

    move-object/16 v1, p0

    .line 1244
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vEncStatusIcon:Landroid/widget/ImageView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getEncryptionStatusIcon()Landroid/widget/ImageView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEncryptionStatusText()Landroid/widget/TextView;
    .locals 4

    move-object/16 v1, p0

    .line 1249
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vEncStatusText:Landroid/widget/TextView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getEncryptionStatusText()Landroid/widget/TextView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureAction()Landroid/widget/ViewAnimator;
    .locals 4

    move-object/16 v1, p0

    .line 1269
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureAction:Landroid/widget/ViewAnimator;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getSignatureAction()Landroid/widget/ViewAnimator;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureLayout()Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    .line 1264
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureLayout:Landroid/view/View;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getSignatureLayout()Landroid/view/View;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureStatusIcon()Landroid/widget/ImageView;
    .locals 4

    move-object/16 v1, p0

    .line 1254
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSigStatusIcon:Landroid/widget/ImageView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getSignatureStatusIcon()Landroid/widget/ImageView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureStatusText()Landroid/widget/TextView;
    .locals 4

    move-object/16 v1, p0

    .line 1259
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSigStatusText:Landroid/widget/TextView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getSignatureStatusText()Landroid/widget/TextView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureUserEmail()Landroid/widget/TextView;
    .locals 4

    move-object/16 v1, p0

    .line 1279
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureMail:Landroid/widget/TextView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getSignatureUserEmail()Landroid/widget/TextView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignatureUserName()Landroid/widget/TextView;
    .locals 4

    move-object/16 v1, p0

    .line 1274
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vSignatureName:Landroid/widget/TextView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->getSignatureUserName()Landroid/widget/TextView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasEncrypt()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->hasEncrypt()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public resizeFileList(ILandroid/view/LayoutInflater;)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move-object/16 v6, p2

    .line 1222
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v0, v5, :cond_0

    const v1, 0x7f0c004f

    const/4 v2, 0x0

    .line 1225
    invoke-virtual {v6, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1226
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1227
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mFileHolderList:Ljava/util/ArrayList;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;

    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder$SubViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1231
    :cond_0
    :goto_1
    iget v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    if-ge v5, v6, :cond_1

    .line 1232
    iget v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    .line 1233
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    iget v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1235
    :cond_1
    :goto_2
    iget v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    if-le v5, v6, :cond_2

    .line 1236
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->vFileList:Landroid/widget/LinearLayout;

    iget v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;->mCurrentFileListSize:I

    goto :goto_2

    :cond_2
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;--->resizeFileList(ILandroid/view/LayoutInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
