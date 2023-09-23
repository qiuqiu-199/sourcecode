.class public Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "KeySpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;
    }
.end annotation


# static fields
.field public static final ARG_KEY_ID:Ljava/lang/String; = "key_id"

.field public static final ARG_SUPER_STATE:Ljava/lang/String; = "super_state"


# instance fields
.field protected mListener:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;

.field protected preSelectedKeyId:Ljava/lang/Long;

.field protected spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 49
    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->initView()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 54
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->initView()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 59
    invoke-direct {v0, v1, v2, p0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->initView()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initView()V
    .locals 5

    move-object/16 v2, p0

    .line 64
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    .line 66
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;)V

    invoke-super {v2, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->initView()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private maybeSelectPreselection(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 104
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->hasNoneItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setSelection(I)V

    return-void

    .line 108
    :cond_0
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->preSelectedKeyId:Ljava/lang/Long;

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 112
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->preSelectedKeyId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 113
    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 114
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->hasNoneItem()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 117
    :cond_3
    invoke-virtual {v7, v1}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setSelection(I)V

    goto :goto_0

    :cond_4
    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->maybeSelectPreselection(Ljava/util/List;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getSelectedKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 127
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 128
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->getSelectedKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSelectedKeyId(Ljava/lang/Object;)J
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 132
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    if-eqz v0, :cond_0

    .line 133
    check-cast v3, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->getSelectedKeyId(Ljava/lang/Object;)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSingleEntry()Z
    .locals 4

    move-object/16 v1, p0

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->isSingleEntry()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->isSingleEntry()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 144
    check-cast v3, Landroid/os/Bundle;

    const-string v0, "key_id"

    .line 146
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->preSelectedKeyId:Ljava/lang/Long;

    const-string v0, "super_state"

    .line 149
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->onRestoreInstanceState(Landroid/os/Parcelable;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    move-object/16 v4, p0

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "super_state"

    .line 159
    invoke-super {v4}, Landroid/support/v7/widget/AppCompatSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "key_id"

    .line 161
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->onSaveInstanceState()Landroid/os/Parcelable;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->setData(Ljava/util/List;)V

    .line 100
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->maybeSelectPreselection(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->setData(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 91
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOnKeyChangedListener(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 95
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->mListener:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->setOnKeyChangedListener(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPreSelectedKeyId(J)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->preSelectedKeyId:Ljava/lang/Long;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->setPreSelectedKeyId(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setShowNone(Ljava/lang/Integer;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 86
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->spinnerAdapter:Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeyChoiceSpinnerAdapter;->setNoneItemString(Ljava/lang/Integer;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;--->setShowNone(Ljava/lang/Integer;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
