# Add this import at the top of your app.py file
from visualization_module import main_visualization_tab

# Then, in the tabs section of your app.py, replace the existing tabs with:

tab1, tab2, tab3, tab4, tab5 = st.tabs([
    "🧩 மெய்ம்மயக்கம்", 
    "🏁 மொழிமுதல்", 
    "🔚 மொழியிறுதி", 
    "🔗 புணர்ச்சி",
    "📊 காட்சிப்படுத்துதல்"  # New tab
])

# Add this after your existing tabs
with tab5:
    main_visualization_tab()
