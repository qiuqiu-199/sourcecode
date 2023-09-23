.class public Lorg/sufficientlysecure/keychain/ui/HelpActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "HelpActivity.java"


# static fields
.field public static final EXTRA_SELECTED_TAB:Ljava/lang/String; = "selected_tab"

.field private static final GOOGLE_PLAY_CATALOG:[Ljava/lang/String;

.field public static final TAB_ABOUT:I = 0x6

.field public static final TAB_CHANGELOG:I = 0x4

.field public static final TAB_CONFIRM:I = 0x1

.field public static final TAB_DONATE:I = 0x3

.field public static final TAB_FAQ:I = 0x2

.field public static final TAB_LICENSES:I = 0x5

.field public static final TAB_START:I


# instance fields
.field private mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keychain.donation.1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "keychain.donation.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "keychain.donation.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "keychain.donation.5"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "keychain.donation.10"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "keychain.donation.50"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "keychain.donation.100"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->GOOGLE_PLAY_CATALOG:[Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/HelpActivity;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 37
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/HelpActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static startHelpActivity(Landroid/content/Context;I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/HelpActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "selected_tab"

    .line 144
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/HelpActivity;--->startHelpActivity(Landroid/content/Context;I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0081

    .line 139
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/HelpActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    .line 154
    invoke-super {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/HelpActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, v3, v4, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 57
    invoke-super {v7, v8}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/HelpActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;

    invoke-direct {v0, v7}, Lorg/sufficientlysecure/keychain/ui/HelpActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/HelpActivity;)V

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f090263

    .line 66
    invoke-virtual {v7, v8}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0902d2

    .line 68
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 70
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    invoke-direct {v1, v7}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v1, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    .line 71
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    invoke-virtual {v8, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 74
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "selected_tab"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selected_tab"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "htmlFile"

    const v5, 0x7f10000d

    .line 80
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v5, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;

    const v6, 0x7f1107d5

    .line 82
    invoke-virtual {v7, v6}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-virtual {v4, v5, v2, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 84
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "htmlFile"

    const v5, 0x7f100009

    .line 85
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v5, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;

    const v6, 0x7f1107d6

    .line 87
    invoke-virtual {v7, v6}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v4, v5, v2, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 89
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "htmlFile"

    const v5, 0x7f10000b

    .line 90
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v5, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;

    const v6, 0x7f1107d2

    .line 92
    invoke-virtual {v7, v6}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {v4, v5, v2, v6}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 94
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "debug"

    .line 95
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "googleEnabled"

    const/4 v4, 0x1

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "googlePubkey"

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwX9SOQ/EL4u5pvbYmYMagN5DDenuSaMaVs2cVPzqxMaIHp6/9/nGuzj2/CpcB4ASd2vvfLlE9tZRkPmFTULWc4Sp4OR+JenQufZZr7Y8WGPkFyqd+dOxhIqKKLtH1QuqSyhby3gEMlWzydJY3rHXlH2Bpu65Uroawq76nynnELXNlzsCM231XWgj4HA87qxv9hSWLCpu16wKxZIX3d6mwZLZmGF+xYJAzVr291oDYYl+h6BDoIcAfmQFsv5MexNwBFO+TLVrvL0e5qdGHZxwwD1/68VSY8FxAEfM+yq7jovdVSdcXlJQjZrV5TRDdFWrtEB6njGA3YZWXP6B6MMMoQIDAQAB"

    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "googleCatalog"

    .line 99
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->GOOGLE_PLAY_CATALOG:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "googleCatalogValues"

    .line 101
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v4, Lorg/sufficientlysecure/donations/DonationsFragment;

    const v5, 0x7f1107d1

    .line 115
    invoke-virtual {v7, v5}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual {v3, v4, v2, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 117
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "htmlFile"

    const v4, 0x7f10000a

    .line 118
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v4, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;

    const v5, 0x7f1107d0

    .line 120
    invoke-virtual {v7, v5}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v3, v4, v2, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 122
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "htmlFile"

    const v4, 0x7f10000c

    .line 123
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v4, Lorg/sufficientlysecure/keychain/ui/HelpMarkdownFragment;

    const v5, 0x7f1107d3

    .line 125
    invoke-virtual {v7, v5}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {v3, v4, v2, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 127
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->mTabsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    const-class v3, Lorg/sufficientlysecure/keychain/ui/HelpAboutFragment;

    const/4 v4, 0x0

    const v5, 0x7f1107cf

    .line 128
    invoke-virtual {v7, v5}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-virtual {v2, v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v8}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 134
    invoke-virtual {v8, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
