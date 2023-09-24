.class public Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingsSmartPGPAuthorityFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 60
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->editAuthority(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;I)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->deleteAuthority(I)Z

    move-result p0

    return p0
.end method

.method private deleteAuthority(I)Z
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    const/4 v0, 0x0

    .line 251
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 257
    :cond_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->writeKeystore(Landroid/content/Context;Ljava/security/KeyStore;)V

    .line 261
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    return v4

    :catch_0
    return v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->deleteAuthority(I)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editAuthority(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move/16 p0, p3

    move-object/16 p1, p4

    const/4 v0, 0x0

    const/16 v1, 0xdac

    .line 190
    :try_start_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v2

    if-nez v2, :cond_0

    .line 193
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "no keystore found"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v3, 0x0

    if-eqz v6, :cond_1

    .line 198
    invoke-virtual {v2, v6}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v6}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 200
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    invoke-virtual {v6, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->notifyItemRemoved(I)V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const-string p0, "X.509"

    .line 210
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 211
    invoke-virtual {p0, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 212
    instance-of p0, v3, Ljava/security/cert/X509Certificate;

    if-nez p0, :cond_3

    .line 213
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "Invalid certificate"

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v6, v7, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return v0

    .line 217
    :cond_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :goto_0
    if-eqz v7, :cond_5

    if-nez v3, :cond_4

    goto :goto_1

    .line 225
    :cond_4
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 227
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 229
    invoke-virtual {v2, v7, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 231
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->writeKeystore(Landroid/content/Context;Ljava/security/KeyStore;)V

    .line 233
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 p0, 0x1

    sub-int/2addr v7, p0

    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;->notifyItemInserted(I)V

    return p0

    .line 221
    :cond_5
    :goto_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "Missing alias or certificate"

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v6, v7, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v6

    .line 243
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid keystore ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v7, v6, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_2

    :catch_1
    move-exception v6

    .line 241
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid certificate ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v7, v6, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_2

    :catch_2
    move-exception v6

    .line 239
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to open certificate ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v7, v6, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v6

    invoke-interface {v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_2
    return v0

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->editAuthority(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;
    .locals 3

    move-object/16 v0, p0

    .line 68
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->newInstance([Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startAddAuthorityDialog()V
    .locals 6

    move-object/16 v3, p0

    .line 137
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;->ADD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v3, v0, v1, v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->startEditAuthorityDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->startAddAuthorityDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startEditAuthorityDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 142
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;

    invoke-direct {v0, v2, v4}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 183
    invoke-static {v1, v3, v4, p0, p1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->newInstance(Landroid/os/Messenger;Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;

    move-result-object v3

    .line 184
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string p0, "addSmartPGPAuthorityDialog"

    invoke-virtual {v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->startEditAuthorityDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d0015

    .line 118
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 120
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    const v2, 0x7f0c00ec

    const/4 p0, 0x0

    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 272
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 272
    invoke-direct {v2, v3, v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->startEditAuthorityDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->onItemClick(Landroid/view/View;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 125
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090220

    if-eq v0, v1, :cond_0

    .line 132
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 128
    :cond_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->startAddAuthorityDialog()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 80
    invoke-super {v2, v3, v4}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 85
    :try_start_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    .line 96
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAuthorities:Ljava/util/ArrayList;

    invoke-direct {v4, v2, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;Ljava/util/List;)V

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    const v4, 0x7f0902d9

    .line 98
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 99
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 100
    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 102
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment$AuthorityListAdapter;

    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;-><init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;)V

    .line 103
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 104
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 107
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->setHasOptionsMenu(Z)V

    return-void
.end method
