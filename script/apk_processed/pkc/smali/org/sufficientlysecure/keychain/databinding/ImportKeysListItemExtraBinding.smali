.class public Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ImportKeysListItemExtraBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final importKey:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/LinearLayout;

.field public final showKey:Landroid/widget/Button;

.field public final status:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    return-void

    const-string v0, "M_InsDal"

    const-string v1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;---><clinit>()V"

    invoke-static/range {v0 .. v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    const/4 v0, 0x0

    .line 42
    invoke-direct {v4, v5, v6, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 220
    iput-wide v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    .line 43
    sget-object v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x7

    invoke-static {v5, v6, v3, v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x5

    .line 44
    aget-object v1, v5, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    .line 45
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 46
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 48
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView1:Landroid/widget/TextView;

    .line 49
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 50
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView2:Landroid/widget/TextView;

    .line 51
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 52
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView4:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 54
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->showKey:Landroid/widget/Button;

    .line 55
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->showKey:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 56
    aget-object v5, v5, v0

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->status:Landroid/widget/ImageView;

    .line 57
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->status:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v4, v6}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->setRootTag(Landroid/view/View;)V

    .line 60
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->invalidateAll()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;---><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
    .locals 4

    move-object/16 v1, p0

    .line 240
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "layout/import_keys_list_item_extra_0"

    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tag isn\'t correct on view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-direct {v0, v3, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
    .locals 4

    move-object/16 v1, p0

    .line 232
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const v0, 0x7f0c0089

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 236
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 224
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const v0, 0x7f0c0089

    .line 228
    invoke-static {v1, v0, v2, v3, p0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected executeBindings()V
    .locals 31

    move-object/16 v28, p0

    move-object/from16 v1, v28

    .line 116
    monitor-enter v28

    .line 117
    :try_start_0
    iget-wide v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 118
    iput-wide v4, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    .line 119
    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v6, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    const-wide/16 v7, 0x3

    and-long v9, v2, v7

    cmp-long v11, v9, v4

    const/4 v13, 0x0

    if-eqz v11, :cond_b

    if-eqz v6, :cond_0

    .line 142
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getSortedUserIds()Ljava/util/ArrayList;

    move-result-object v11

    .line 144
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    .line 146
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getQuery()Ljava/lang/String;

    move-result-object v15

    .line 148
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isRevokedOrExpiredOrInsecure()Z

    move-result v16

    .line 150
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isUpdated()Z

    move-result v17

    .line 152
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isSecure()Z

    move-result v18

    .line 154
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isRevoked()Z

    move-result v19

    .line 156
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyIdHex()Ljava/lang/String;

    move-result-object v20

    .line 158
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isExpired()Z

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_0
    cmp-long v21, v9, v4

    if-eqz v21, :cond_2

    if-eqz v16, :cond_1

    const-wide/16 v9, 0x8

    or-long v21, v2, v9

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x4

    or-long v21, v2, v9

    goto :goto_1

    :cond_2
    move-wide/from16 v21, v2

    :goto_1
    and-long v2, v21, v7

    cmp-long v9, v2, v4

    if-eqz v9, :cond_4

    if-eqz v17, :cond_3

    const-wide/16 v2, 0x20

    or-long v9, v21, v2

    const-wide/16 v2, 0x200

    or-long v21, v9, v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x10

    or-long v9, v21, v2

    const-wide/16 v2, 0x100

    or-long v21, v9, v2

    :cond_4
    :goto_2
    move-wide/from16 v2, v21

    if-nez v14, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    const/16 v10, 0x8

    if-eqz v16, :cond_6

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    const/16 v16, 0x8

    :goto_4
    if-eqz v17, :cond_7

    goto :goto_5

    :cond_7
    const/16 v13, 0x8

    :goto_5
    if-eqz v17, :cond_8

    .line 187
    iget-object v10, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f11007a

    :goto_6
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    goto :goto_7

    :cond_8
    iget-object v10, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f11006f

    goto :goto_6

    :goto_7
    and-long v21, v2, v7

    cmp-long v10, v21, v4

    if-eqz v10, :cond_a

    if-eqz v9, :cond_9

    const-wide/16 v21, 0x80

    or-long v23, v2, v21

    :goto_8
    move/from16 v26, v6

    move v10, v13

    move-object/from16 v25, v14

    move/from16 v13, v16

    move/from16 v27, v18

    move/from16 v14, v19

    move-object/from16 v6, v20

    move-wide/from16 v2, v23

    goto :goto_9

    :cond_9
    const-wide/16 v21, 0x40

    or-long v23, v2, v21

    goto :goto_8

    :cond_a
    move/from16 v26, v6

    move v10, v13

    move-object/from16 v25, v14

    move/from16 v13, v16

    move/from16 v27, v18

    move/from16 v14, v19

    move-object/from16 v6, v20

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_9
    and-long v16, v2, v7

    cmp-long v2, v16, v4

    if-eqz v2, :cond_d

    if-eqz v9, :cond_c

    .line 202
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110d34

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_c
    move-object/from16 v2, v25

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    cmp-long v3, v16, v4

    if-eqz v3, :cond_e

    .line 208
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    invoke-static {v3, v12}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView1:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;->setKeyId(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 210
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView2:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 211
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mboundView4:Landroid/widget/LinearLayout;

    invoke-static {v2, v11, v15}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;->setUserIds(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 212
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->showKey:Landroid/widget/Button;

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->status:Landroid/widget/ImageView;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->status:Landroid/widget/ImageView;

    move/from16 v6, v26

    move/from16 v13, v27

    invoke-static {v2, v14, v6, v13}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysExtraBindings;->setStatus(Landroid/widget/ImageView;ZZZ)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 119
    :try_start_1
    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    const-string v29, "M_InsDal"

    const-string v30, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->executeBindings()V"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEntry()Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
    .locals 4

    move-object/16 v1, p0

    .line 103
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->getEntry()Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasPendingBindings()Z
    .locals 8

    move-object/16 v5, p0

    .line 73
    monitor-enter v5

    .line 74
    :try_start_0
    iget-wide v0, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 75
    monitor-exit v5

    return v0

    .line 77
    :cond_0
    monitor-exit v5

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->hasPendingBindings()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidateAll()V
    .locals 5

    move-object/16 v2, p0

    .line 65
    monitor-enter v2

    const-wide/16 v0, 0x2

    .line 66
    :try_start_0
    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    .line 67
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 67
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->invalidateAll()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->onFieldChange(ILjava/lang/Object;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 94
    iput-object v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 95
    monitor-enter v6

    .line 96
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->mDirtyFlags:J

    .line 97
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    .line 98
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 97
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x2

    if-ne v0, v2, :cond_0

    .line 85
    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;--->setVariable(ILjava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
