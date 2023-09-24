.class public Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "MultiUserIdsAdapter.java"


# instance fields
.field private checkboxVisibility:Z

.field private final mCheckStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 47
    invoke-direct {v0, v1, v2, p0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->checkboxVisibility:Z

    .line 48
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;---><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/util/ArrayList;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 53
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/util/ArrayList;)V

    .line 54
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->checkboxVisibility:Z

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;---><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/util/ArrayList;Z)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    const v0, 0x7f090355

    .line 78
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09035f

    .line 79
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090358

    .line 80
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 82
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const/4 v5, 0x2

    .line 83
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 85
    array-length v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 86
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 88
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 92
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v6

    .line 93
    iget-object v7, v6, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    const v9, 0x7f110d45

    if-eqz v7, :cond_0

    .line 94
    iget-object v7, v6, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/16 v1, 0x8

    if-ne v5, v3, :cond_2

    .line 100
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v5, v6, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    const v7, 0x7f110c75

    if-eqz v5, :cond_1

    .line 103
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v10, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v12, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 109
    :goto_1
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 111
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v4

    .line 118
    iget-object v5, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-nez v5, :cond_3

    goto :goto_3

    .line 121
    :cond_3
    iget-object v5, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v5, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v5, " ("

    .line 123
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v4, 0xa

    .line 125
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 131
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 135
    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v12, 0x7f09035a

    .line 138
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 139
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result p0

    const/4 v0, 0x0

    .line 140
    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;

    invoke-direct {v0, v10, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;I)V

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    invoke-virtual {v12, v8}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 149
    iget-boolean p0, v10, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->checkboxVisibility:Z

    if-eqz p0, :cond_7

    const/4 v1, 0x0

    :cond_7
    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const p0, 0x7f090354

    .line 151
    invoke-virtual {v11, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 152
    invoke-virtual {v11, v3}, Landroid/view/View;->setClickable(Z)V

    .line 153
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;

    invoke-direct {p0, v10, v12}, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;--->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCheckStates()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 163
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;--->getCheckStates()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSelectedCertifyActions()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;"
        }
    .end annotation

    move-object/16 v8, p0

    .line 167
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 169
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 172
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 173
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 176
    array-length v7, v5

    invoke-virtual {v6, v5, v1, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 177
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 178
    invoke-virtual {v6}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 179
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;

    if-nez v6, :cond_0

    .line 183
    invoke-static {v3, v4, v5}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->createForUserIds(JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;

    move-result-object v5

    goto :goto_1

    .line 185
    :cond_0
    invoke-virtual {v6, v5}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->withAddedUserIds(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;

    move-result-object v5

    .line 187
    :goto_1
    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    :goto_2
    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 193
    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v2

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;--->getSelectedCertifyActions()Ljava/util/ArrayList;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 73
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0039

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;--->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    if-eqz v5, :cond_0

    .line 60
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 61
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 63
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->mCheckStates:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-super {v4, v5}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;--->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
