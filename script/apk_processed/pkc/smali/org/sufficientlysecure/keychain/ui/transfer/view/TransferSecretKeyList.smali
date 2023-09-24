.class public Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;
.super Landroid/support/v7/widget/RecyclerView;
.source "TransferSecretKeyList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;,
        Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;
    }
.end annotation


# static fields
.field private static final STATE_BUTTON:I = 0x1

.field private static final STATE_INVISIBLE:I = 0x0

.field private static final STATE_PROGRESS:I = 0x2

.field private static final STATE_TRANSFERRED:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 51
    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;->init(Landroid/content/Context;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 56
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;->init(Landroid/content/Context;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 61
    invoke-direct {v0, v1, v2, p0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;->init(Landroid/content/Context;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 66
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1, v1}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList;--->init(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
