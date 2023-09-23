.class public Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MultiUserIdsFragment.java"


# static fields
.field public static final ARG_CHECK_STATES:Ljava/lang/String; = "check_states"

.field public static final EXTRA_KEY_IDS:Ljava/lang/String; = "extra_key_ids"


# instance fields
.field private checkboxVisibility:Z

.field private pubMasterKeyIds:[J

.field userIds:Landroid/widget/ListView;

.field private userIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 46
    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->checkboxVisibility:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserIdsLoaded(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;)V"
        }
    .end annotation

    move-object/16 v19, p0

    move-object/16 v20, p1

    move-object/from16 v0, v19

    .line 110
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$1;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "user_data"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "grouped"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-direct {v1, v0, v3}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;[Ljava/lang/String;)V

    const-string v3, ""

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    move-object v12, v3

    const/4 v3, 0x1

    const/4 v11, 0x1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    .line 130
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->master_key_id()J

    move-result-wide v14

    cmp-long v16, v14, v9

    if-nez v16, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-nez v11, :cond_2

    if-eqz v14, :cond_1

    if-eqz v12, :cond_1

    .line 131
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v11, 0x1

    .line 134
    :goto_3
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->name()Ljava/lang/String;

    move-result-object v12

    .line 136
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->master_key_id()J

    move-result-wide v7

    const/16 v6, 0x10

    invoke-static {v7, v8, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_3

    const-string v6, "grouped"

    goto :goto_4

    :cond_3
    const-string v6, "not grouped"

    :goto_4
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v11, :cond_4

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 142
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 143
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    .line 144
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 146
    new-array v6, v2, [Ljava/lang/Object;

    .line 147
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 146
    invoke-virtual {v1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    goto :goto_5

    :cond_4
    move v6, v3

    .line 158
    :goto_5
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->user_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->master_key_id()J

    move-result-wide v9

    if-nez v14, :cond_5

    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    move v3, v6

    :goto_6
    move-object/from16 v8, v17

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 168
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 171
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 172
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 173
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 175
    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 175
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 181
    :cond_7
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void

    const-string v21, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;--->onUserIdsLoaded(Ljava/util/List;)V"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$MultiUserIdsFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->onUserIdsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public getSelectedCertifyActions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 102
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->checkboxVisibility:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Item selection not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->getSelectedCertifyActions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;--->getSelectedCertifyActions()Ljava/util/ArrayList;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onActivityCreated$0$MultiUserIdsFragment(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Ljava/util/List;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->pubMasterKeyIds:[J

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUserIds([J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 66
    invoke-super {v8, v9}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_key_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->pubMasterKeyIds:[J

    .line 70
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->pubMasterKeyIds:[J

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-string v9, "List of key ids to certify missing!"

    .line 71
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v9, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v9, :cond_1

    const-string v0, "check_states"

    .line 78
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object v4, v9

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 81
    :goto_0
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v5, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->checkboxVisibility:Z

    move-object v0, v9

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/util/ArrayList;Z)V

    iput-object v9, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    .line 82
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIds:Landroid/widget/ListView;

    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIds:Landroid/widget/ListView;

    invoke-virtual {v9, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 85
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v9

    .line 86
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 87
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;

    invoke-direct {v2, v8, v9}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    .line 88
    new-instance v9, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$1;

    invoke-direct {v9, v8}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;)V

    invoke-virtual {v0, v8, v9}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c00c0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090386

    .line 60
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIds:Landroid/widget/ListView;

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 94
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->userIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->getCheckStates()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "check_states"

    .line 98
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setCheckboxVisibility(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 185
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->checkboxVisibility:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;--->setCheckboxVisibility(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
