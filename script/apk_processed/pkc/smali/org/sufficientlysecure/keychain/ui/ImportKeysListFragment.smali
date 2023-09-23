.class public Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImportKeysListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
        "Ljava/util/ArrayList<",
        "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final ARG_BYTES:Ljava/lang/String; = "bytes"

.field public static final ARG_CLOUD_SEARCH_PREFS:Ljava/lang/String; = "cloud_search_prefs"

.field private static final ARG_DATA_URI:Ljava/lang/String; = "uri"

.field public static final ARG_NON_INTERACTIVE:Ljava/lang/String; = "non_interactive"

.field public static final ARG_SERVER_QUERY:Ljava/lang/String; = "query"

.field private static final LOADER_ID_BYTES:I = 0x0

.field private static final LOADER_ID_CLOUD:I = 0x1

.field public static final STATUS_EMPTY:I = 0x3

.field public static final STATUS_FIRST:I = 0x0

.field public static final STATUS_LOADED:I = 0x2

.field public static final STATUS_LOADING:I = 0x1


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

.field private mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

.field private mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

.field private mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

.field private mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

.field private mShowingOrbotDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 59
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    return-object p0
.end method

.method static synthetic access$302(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mShowingOrbotDialog:Z

    return p1
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->restartLoaders()V

    return-void
.end method

.method static synthetic access$502(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)Lorg/sufficientlysecure/keychain/util/ParcelableProxy;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    return-object p1
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method public static newInstance([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/4 v0, 0x0

    .line 102
    invoke-static {v1, v2, v3, v0, p0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->newInstance([BLandroid/net/Uri;Ljava/lang/String;ZLorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->newInstance([BLandroid/net/Uri;Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance([BLandroid/net/Uri;Ljava/lang/String;ZLorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bytes"

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "uri"

    .line 125
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "query"

    .line 126
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "non_interactive"

    .line 127
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "cloud_search_prefs"

    .line 128
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;-><init>()V

    .line 131
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->newInstance([BLandroid/net/Uri;Ljava/lang/String;ZLorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private restartLoaders()V
    .locals 6

    move-object/16 v3, p0

    .line 239
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 241
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    instance-of v1, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 242
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    instance-of v1, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_1
    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->restartLoaders()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadState(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 223
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    .line 225
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    instance-of v2, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    check-cast v2, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    .line 228
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mDataUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;->mDataUri:Landroid/net/Uri;

    .line 229
    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkAndRequestReadPermission(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;->isBasicModeSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setAdvanced(Z)V

    .line 235
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->restartLoaders()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->loadState(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 184
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_0
    move-object v0, v3

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 189
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must implement ImportKeysListener"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()Z
    .locals 5

    move-object/16 v2, p0

    .line 214
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->getAdvanced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;->isBasicModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setAdvanced(Z)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onBackPressed()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;>;"
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    .line 259
    :pswitch_0
    new-instance v3, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-direct {v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListCloudLoader;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V

    goto :goto_0

    .line 255
    :pswitch_1
    new-instance v3, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;

    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mLoaderState:Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListLoader;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;)V

    :goto_0
    if-eqz v3, :cond_0

    .line 266
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setStatus(I)V

    :cond_0
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c0087

    .line 137
    invoke-static {v7, v0, v8, p0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    .line 138
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    invoke-virtual {v7, p0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setStatus(I)V

    .line 139
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->getRoot()Landroid/view/View;

    move-result-object v7

    .line 141
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iput-object v8, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 143
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v0, "uri"

    .line 144
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "bytes"

    .line 145
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "query"

    .line 146
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "non_interactive"

    .line 147
    invoke-virtual {v8, v3, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 148
    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->setNonInteractive(Z)V

    .line 151
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    invoke-direct {v3, v4, v5, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;Z)V

    iput-object v3, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    .line 152
    iget-object p0, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iget-object p0, p0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 153
    iget-object p0, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iget-object p0, p0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_3

    const-string p0, "cloud_search_prefs"

    .line 158
    invoke-virtual {v8, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    if-nez v8, :cond_1

    .line 160
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getCloudSearchPrefs()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v8

    .line 162
    :cond_1
    new-instance p0, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    invoke-direct {p0, v2, v8}, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    invoke-virtual {v6, p0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->loadState(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V

    goto :goto_1

    .line 156
    :cond_2
    :goto_0
    new-instance v8, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    invoke-direct {v8, v1, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;-><init>([BLandroid/net/Uri;)V

    invoke-virtual {v6, v8}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->loadState(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V

    .line 166
    :cond_3
    :goto_1
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->importKeys:Landroid/widget/Button;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;

    invoke-direct {p0, v6}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v8, v6, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    iget-object v8, v8, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->listKeys:Landroid/widget/Button;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;

    invoke-direct {p0, v6}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p2, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;>;",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 277
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->setData(Ljava/util/List;)V

    .line 278
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->getItemCount()I

    move-result v0

    .line 280
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setNumber(I)V

    .line 281
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mBinding:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setStatus(I)V

    .line 283
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;->getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;

    .line 284
    invoke-virtual {v3}, Landroid/support/v4/content/Loader;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 291
    :pswitch_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->isPending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v3

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ENABLE_ORBOT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-ne v3, v4, :cond_3

    .line 294
    iget-boolean v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mShowingOrbotDialog:Z

    if-eqz v3, :cond_1

    return-void

    .line 300
    :cond_1
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;)V

    .line 333
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    .line 334
    iput-boolean v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mShowingOrbotDialog:Z

    goto :goto_1

    .line 336
    :cond_2
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->success()Z

    move-result v3

    if-nez v3, :cond_3

    .line 337
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_1

    .line 286
    :pswitch_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->success()Z

    move-result v3

    if-nez v3, :cond_3

    .line 287
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/operations/results/GetKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onLoadFinished(Landroid/support/v4/content/Loader;Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper<",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;>;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 347
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->clearData()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onLoaderReset(Landroid/support/v4/content/Loader;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 199
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkReadPermissionResult(Landroid/content/Context;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->restartLoaders()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 203
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysListFragment;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
