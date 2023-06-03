.class public Landroid/support/v7/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/Preference$BaseSavedState;,
        Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/support/v7/preference/Preference$OnPreferenceClickListener;,
        Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/v7/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 367
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 121
    iput v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Landroid/support/v7/preference/Preference;->mViewId:I

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 135
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 137
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 140
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    .line 141
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    .line 142
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    .line 144
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerAbove:Z

    .line 145
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 147
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    .line 153
    iput-boolean v2, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 155
    sget v3, Landroid/support/v7/preference/R$layout;->preference:I

    iput v3, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 166
    new-instance v3, Landroid/support/v7/preference/Preference$1;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/Preference$1;-><init>(Landroid/support/v7/preference/Preference;)V

    iput-object v3, p0, Landroid/support/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 259
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    .line 261
    sget-object v3, Landroid/support/v7/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 264
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_icon:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    .line 267
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_key:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 270
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_title:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 273
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_summary:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 276
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_order:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 279
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_fragment:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    .line 282
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_layout:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_layout:I

    sget p4, Landroid/support/v7/preference/R$layout;->preference:I

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    .line 285
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_widgetLayout:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 288
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_enabled:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 291
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_selectable:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 294
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_persistent:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    .line 297
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_dependency:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 300
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerAbove:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean p4, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerAbove:Z

    .line 303
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerBelow:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean p4, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 306
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 307
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_0
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 309
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 312
    :cond_1
    :goto_0
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_shouldDisableView:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 313
    invoke-static {p1, p2, p3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 316
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 317
    iget-boolean p2, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p2, :cond_2

    .line 318
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_singleLineTitle:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    .line 322
    :cond_2
    sget p2, Landroid/support/v7/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget p3, Landroid/support/v7/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .line 1504
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void

    .line 1510
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1516
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1512
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1513
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private registerDependency()V
    .locals 3

    .line 1314
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1316
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1318
    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->registerDependent(Landroid/support/v7/preference/Preference;)V

    return-void

    .line 1320
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerDependent(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 1362
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    .line 1366
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    .line 634
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 636
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 637
    check-cast p1, Landroid/view/ViewGroup;

    .line 638
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1544
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 1326
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-direct {v0, p0}, Landroid/support/v7/preference/Preference;->unregisterDependent(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 1378
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1    # Landroid/support/v7/preference/PreferenceGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1269
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mParentGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .line 1052
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final clearWasDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 1309
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 2
    .param p1    # Landroid/support/v7/preference/Preference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1176
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/support/v7/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1178
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    iget p1, p1, Landroid/support/v7/preference/Preference;->mOrder:I

    sub-int/2addr v0, p1

    return v0

    .line 1179
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1182
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1184
    :cond_2
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    const/4 p1, -0x1

    return p1

    .line 1188
    :cond_3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1985
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1988
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1989
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1990
    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1991
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1932
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1933
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1934
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1935
    iget-boolean v1, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 1940
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1936
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 1345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1144
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .line 1469
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 478
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1894
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1895
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1898
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1899
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1902
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 756
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 759
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 899
    iget-wide v0, p0, Landroid/support/v7/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 413
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .line 518
    iget v0, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .line 1073
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .line 1091
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 674
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1480
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mParentGroup:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2

    .line 1864
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1868
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1870
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1873
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected getPersistedFloat(F)F
    .locals 2

    .line 1754
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1758
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1760
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 1763
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method protected getPersistedInt(I)I
    .locals 2

    .line 1699
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1703
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1705
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1708
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getPersistedLong(J)J
    .locals 2

    .line 1809
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    .line 1813
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1815
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v7/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 1818
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1591
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1595
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1597
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1600
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1644
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1648
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1650
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1653
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    return-object v0

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    .line 1228
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1160
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .line 864
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 769
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 719
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .line 543
    iget v0, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 955
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconSpaceReserved()Z
    .locals 1

    .line 1040
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 966
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 839
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public isSingleLineTitle()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1206
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    .line 1391
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1397
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1399
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/support/v7/preference/Preference;->onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .line 1217
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1281
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->registerDependency()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 2

    .line 1238
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 1240
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1241
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/preference/Preference;->mId:J

    .line 1244
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;J)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1253
    iput-wide p2, p0, Landroid/support/v7/preference/Preference;->mId:J

    const/4 p2, 0x1

    .line 1254
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    const/4 p2, 0x0

    .line 1256
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroid/support/v7/preference/Preference;->mHasId:Z

    throw p1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    .line 559
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/preference/Preference;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x1020016

    .line 562
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 565
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v3, :cond_1

    .line 569
    iget-boolean v3, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    .line 576
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 579
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 580
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 583
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 587
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    .line 589
    iget v4, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 590
    :cond_4
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 591
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 593
    :cond_5
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 594
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    :cond_6
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 598
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 600
    :cond_7
    iget-boolean v4, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_2

    :cond_8
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    :cond_9
    :goto_3
    sget v0, Landroid/support/v7/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const v0, 0x102003e

    .line 606
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_d

    .line 609
    iget-object v4, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 610
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 612
    :cond_b
    iget-boolean v2, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v2, :cond_c

    const/4 v1, 0x4

    :cond_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_d
    :goto_4
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    if-eqz v0, :cond_e

    .line 617
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5

    .line 619
    :cond_e
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 622
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isSelectable()Z

    move-result v0

    .line 623
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 624
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 626
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 627
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public onDependencyChanged(Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    .line 1410
    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1411
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mDependencyMet:Z

    .line 1414
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1416
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1291
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->unregisterDependency()V

    const/4 v0, 0x1

    .line 1292
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onParentChanged(Landroid/support/v7/preference/Preference;Z)V
    .locals 0

    .line 1427
    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1428
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mParentDependencyMet:Z

    .line 1431
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1433
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .line 1489
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2009
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 2010
    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2011
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 1958
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1959
    sget-object v0, Landroid/support/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .line 489
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick()V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1114
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 1116
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroid/support/v7/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1120
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1123
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1124
    invoke-interface {v0, p0}, Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1129
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1131
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1099
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3

    .line 1833
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 1837
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1842
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1844
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1846
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1847
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1848
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected persistFloat(F)Z
    .locals 3

    .line 1723
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1727
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    const/4 v1, 0x1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return v1

    .line 1732
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1734
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1736
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1737
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1738
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected persistInt(I)Z
    .locals 3

    .line 1668
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, -0x1

    .line 1672
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1677
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1679
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1681
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected persistLong(J)Z
    .locals 4

    .line 1778
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p1

    .line 1782
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    return v2

    .line 1787
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1789
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v7/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1791
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1792
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1793
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v2
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    .line 1560
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1565
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1570
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1572
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1574
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1575
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1576
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1614
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1619
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1624
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1626
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1628
    :cond_2
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1629
    iget-object v2, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1630
    invoke-direct {p0, v0}, Landroid/support/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method requireKey()V
    .locals 2

    .line 942
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 946
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mRequiresKey:Z

    return-void

    .line 943
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .line 1971
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .line 1918
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    .line 1455
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->unregisterDependency()V

    .line 1458
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1459
    invoke-direct {p0}, Landroid/support/v7/preference/Preference;->registerDependency()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 802
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 803
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mEnabled:Z

    .line 806
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 808
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 745
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 746
    iput p1, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 731
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 732
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 733
    iput p1, p0, Landroid/support/v7/preference/Preference;->mIconResId:I

    .line 734
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 0

    .line 1027
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mIconSpaceReserved:Z

    .line 1028
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 404
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 918
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 920
    iget-boolean p1, p0, Landroid/support/v7/preference/Preference;->mRequiresKey:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result p1

    if-nez p1, :cond_0

    .line 921
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->requireKey()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 509
    iput p1, p0, Landroid/support/v7/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mOnChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 1082
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    .line 658
    iget v0, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 659
    iput p1, p0, Landroid/support/v7/preference/Preference;->mOrder:I

    .line 662
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 989
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mPersistent:Z

    return-void
.end method

.method public setPreferenceDataStore(Landroid/support/v7/preference/PreferenceDataStore;)V
    .locals 0

    .line 446
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    .line 827
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 828
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mSelectable:Z

    .line 829
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0

    .line 854
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mShouldDisableView:Z

    .line 855
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1001
    iput-boolean v0, p0, Landroid/support/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 1002
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mSingleLineTitle:Z

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 792
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 778
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 779
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 781
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 709
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 696
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 697
    :cond_1
    iput-object p1, p0, Landroid/support/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 698
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setViewId(I)V
    .locals 0

    .line 684
    iput p1, p0, Landroid/support/v7/preference/Preference;->mViewId:I

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .line 875
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 876
    iput-boolean p1, p0, Landroid/support/v7/preference/Preference;->mVisible:Z

    .line 877
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz p1, :cond_0

    .line 878
    iget-object p1, p0, Landroid/support/v7/preference/Preference;->mListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {p1, p0}, Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0

    .line 534
    iput p1, p0, Landroid/support/v7/preference/Preference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1444
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 978
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1878
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wasDetached()Z
    .locals 1

    .line 1301
    iget-boolean v0, p0, Landroid/support/v7/preference/Preference;->mWasDetached:Z

    return v0
.end method
