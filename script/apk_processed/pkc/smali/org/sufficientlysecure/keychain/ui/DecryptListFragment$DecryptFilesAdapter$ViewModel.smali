.class public Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;
.super Ljava/lang/Object;
.source "DecryptListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewModel"
.end annotation


# instance fields
.field mCancelled:Landroid/view/View$OnClickListener;

.field mInputUri:Landroid/net/Uri;

.field mMax:I

.field mProcessingKeyLookup:Z

.field mProgress:I

.field mProgressMsg:Ljava/lang/String;

.field mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

.field final synthetic this$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 849
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->this$1:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 850
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 851
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProgress:I

    const/16 v1, 0x64

    .line 852
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mMax:I

    const/4 v1, 0x0

    .line 853
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mCancelled:Landroid/view/View$OnClickListener;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v4, v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v5, :cond_4

    .line 886
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 889
    :cond_1
    check-cast v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    .line 890
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 891
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 893
    :cond_3
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    :cond_4
    :goto_1
    return v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasResult()Z
    .locals 4

    move-object/16 v1, p0

    .line 861
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->hasResult()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    .line 899
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setCancelled(Landroid/view/View$OnClickListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 865
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mCancelled:Landroid/view/View$OnClickListener;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->setCancelled(Landroid/view/View$OnClickListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setProcessingKeyLookup(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 877
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProcessingKeyLookup:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->setProcessingKeyLookup(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setProgress(IILjava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    if-eqz p0, :cond_0

    .line 870
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProgressMsg:Ljava/lang/String;

    .line 872
    :cond_0
    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mProgress:I

    .line 873
    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mMax:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->setProgress(IILjava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setResult(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 857
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->setResult(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 904
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;--->toString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
