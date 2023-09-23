.class public Lorg/inaturalist/android/TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v7/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mBar:Landroid/support/v7/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroid/support/v7/app/ActionBar;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lorg/inaturalist/android/TabsAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lorg/inaturalist/android/TabsAdapter;->mBar:Landroid/support/v7/app/ActionBar;

    .line 47
    iput-object p3, p0, Lorg/inaturalist/android/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 48
    iget-object p1, p0, Lorg/inaturalist/android/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 49
    iget-object p1, p0, Lorg/inaturalist/android/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/app/ActionBar$Tab;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/inaturalist/android/TabsAdapter$TabInfo;

    invoke-direct {v0, p0, p2, p3}, Lorg/inaturalist/android/TabsAdapter$TabInfo;-><init>(Lorg/inaturalist/android/TabsAdapter;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/support/v7/app/ActionBar$Tab;

    .line 55
    invoke-virtual {p1, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 56
    iget-object p2, p0, Lorg/inaturalist/android/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lorg/inaturalist/android/TabsAdapter;->mBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p2, p1}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 58
    invoke-virtual {p0}, Lorg/inaturalist/android/TabsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/TabsAdapter$TabInfo;

    .line 69
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/inaturalist/android/TabsAdapter$TabInfo;->access$000(Lorg/inaturalist/android/TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/inaturalist/android/TabsAdapter$TabInfo;->access$100(Lorg/inaturalist/android/TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 90
    iget-object v0, p0, Lorg/inaturalist/android/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
