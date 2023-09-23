.class public Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PagerTabStripAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 48
    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mTabs:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 49
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mActivity:Landroid/app/Activity;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;---><init>(Landroid/support/v7/app/AppCompatActivity;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 53
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;

    invoke-direct {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 54
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->notifyDataSetChanged()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCount()I
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->getCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 70
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;

    .line 71
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mActivity:Landroid/app/Activity;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;->clss:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v0, v1, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->getItem(I)Landroid/support/v4/app/Fragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 76
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter$TabInfo;->title:Ljava/lang/String;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->getPageTitle(I)Ljava/lang/CharSequence;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 93
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 81
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public removeTab(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 59
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->notifyDataSetChanged()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;--->removeTab(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
